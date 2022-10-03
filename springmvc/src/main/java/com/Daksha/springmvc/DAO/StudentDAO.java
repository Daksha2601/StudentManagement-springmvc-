package com.Daksha.springmvc.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.hibernate.TransactionException;
import org.springframework.stereotype.Repository;

import com.Daksha.springmvc.DTO.StudentDTO;

@Repository
public class StudentDAO implements StudentDAOInterface{
	
	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	
	private static void openConnections() {
		factory=Persistence.createEntityManagerFactory("springmvc");
		manager=factory.createEntityManager();
		transaction=manager.getTransaction();
	}
	
	private static void closeConnections() {
		if (factory!=null) {
			factory.close();
		}
		if (manager!=null) {
			manager.close();
		}
		if (transaction!=null) {
			try {
				transaction.rollback();
			}catch(TransactionException e) {
				System.out.println("Transaction already commited.");
			}
		}
	}

	@Override
	public void addStudent(int id,String name, String email, String userName, String password) {
		
		openConnections();
		transaction.begin();
		
		StudentDTO student=new StudentDTO();
		student.setId(id);
		student.setName(name);
		student.setEmail(email);
		student.setUserName(userName);
		student.setPassword(password);
		
		manager.persist(student);
		transaction.commit();

		closeConnections();
		
	}

	@Override
	public StudentDTO login(String userName, String password) {
		openConnections();
		transaction.begin();
		String jpql="from StudentDTO where userName='"+userName+"'and password ='"+password+"' ";
		Query query=manager.createQuery(jpql);
		
		try {
			StudentDTO student=(StudentDTO)query.getSingleResult();
		if (student!=null) {
			closeConnections();
			return student;
		}
		closeConnections();
		}catch (Exception e) {
			return null;
		}
		return null;
	}

	@Override
	public List<StudentDTO> viewAllStudents() {
		openConnections();
		transaction.begin();
		
		String jpql="from StudentDTO";
		Query query=manager.createQuery(jpql);
		
		List<StudentDTO> students=query.getResultList();
		
		closeConnections();
		return students;
	}

	@Override
	public StudentDTO removeStudent(int id) {
		openConnections();
		transaction.begin();
		StudentDTO student=manager.find(StudentDTO.class, id);
		manager.remove(student);
		transaction.commit();
		closeConnections();
		return student;
	}

	@Override
	public StudentDTO searchStudent(int id) {
		openConnections();
		transaction.begin();
		StudentDTO student=manager.find(StudentDTO.class, id);
		
		transaction.commit();
		closeConnections();
		return student;
	}

	public StudentDTO updateStudent(int id, String name, String email, String userName, String password) {
		openConnections();
		transaction.begin();
		StudentDTO student = manager.find(StudentDTO.class, id);
		student.setName(name);
		student.setEmail(email);
		student.setUserName(userName);
		student.setPassword(password);
		manager.persist(student);
		transaction.commit();
		closeConnections();
		return student;
	}

}
