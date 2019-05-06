package com.alighthub.studentService;

import java.util.List;
import java.util.Optional;

import javax.mail.internet.InternetAddress;

import org.springframework.mail.javamail.MimeMessageHelper;

import com.alighthub.model.Student;



public interface StudentService {

	public void addStudent(Student student);
	public List<Student> getAllStudents();
	public void deleteRecord(int rollNo);
	public Student findById(Integer rollNo);
	public Student update(Student stud, int rollNo);
	public Student findAllByUsernameAndPassword(String uname,String pass);

}
