package com.Daksha.springmvc.DAO;

import java.util.List;

import com.Daksha.springmvc.DTO.StudentDTO;

public interface StudentDAOInterface {
	void addStudent(int id,String name,String email,String userName,String password);
	StudentDTO login(String userName,String password);
	List<StudentDTO> viewAllStudents();
	StudentDTO updateStudent(int id, String name,String email, String userName, String password);
	StudentDTO removeStudent(int id);
	StudentDTO searchStudent(int id);
}
