package com.Daksha.springmvc.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Daksha.springmvc.DAO.StudentDAO;
import com.Daksha.springmvc.DTO.StudentDTO;

@Service
public class StudentServices implements StudentServiceInterface{

	@Autowired
	private StudentDAO dao;
	
	@Override
	public void addStudent(int id,String name, String email, String userName, String password) {
		if(id!=0 && name!=null && email!=null && userName!=null && password!=null) {
			dao.addStudent(id,name,email,userName,password);
		}
		
	}

	@Override
	public StudentDTO login(String userName, String password) {
		if (userName!=null && password!=null) {
			StudentDTO student=dao.login(userName,password);
			if (student!=null) {
				return student;
			}
		}
		return null;
	}

	@Override
	public List<StudentDTO> viewAllStudents() {
		List<StudentDTO> students=dao.viewAllStudents();
		return students;
	}

	@Override
	public StudentDTO removeStudent(int id) {
		if (id>=0) {
			StudentDTO student=dao.removeStudent(id);
			return student;
		}
		return null;
	}

	@Override
	public StudentDTO updateStudent(int id, String name, String email, String userName, String password) {
		if (id > 0) {
			StudentDTO student = dao.updateStudent(id, name, email, userName, password);
			return student;
		}
		return null;
	}

	@Override
	public StudentDTO searchStudent(int id) {
		if (id > 0) {
			StudentDTO student = dao.searchStudent(id);
			return student;
		}
		return null;
	}
	
	
	
	

}
