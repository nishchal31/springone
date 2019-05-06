package com.alighthub.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.alighthub.model.Student;
import com.alighthub.studentService.StudentService;

@CrossOrigin(origins="*")
@RestController
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService service;
	
	@RequestMapping(value="/",method=RequestMethod.POST)
	public void addStudent(@RequestBody Student student) {
		System.out.println(student.getName());
		service.addStudent(student);
	}
	
	@GetMapping(value="/{id}")
	public Student getStudent(@PathVariable int id) {
		Student student=service.findById(id);
		return student;
	}
	
	@GetMapping("/")
	public List<Student> getAll(){
		List<Student> list=service.getAllStudents();
		return list;
	}
	
	@PutMapping("/")
	public Student update(@RequestBody Student student) {
		Student student2= service.update(student, student.getRollNo());
		return student2;
	}
	
	@DeleteMapping("/{Id}")
	public void delete(@PathVariable int Id) {
		System.out.println("inside delete controller");
		service.deleteRecord(Id);
	}
	
}
