package com.Daksha.springmvc.Services;

import java.util.List;

import com.Daksha.springmvc.DTO.StudentDTO;

public interface StudentServiceInterface {
	void addStudent(int id,String name,String email,String userName,String password);
	
	StudentDTO login(String userName,String password);
	
	List<StudentDTO> viewAllStudents();
	
	StudentDTO removeStudent(int id);
	
	StudentDTO updateStudent(int id, String name, 
	
					String email, String userName, String password);
	
	StudentDTO searchStudent(int id);

}
