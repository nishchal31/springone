package com.alighthub.studentServiceImpl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.alighthub.model.Student;
import com.alighthub.studentDao.StudentDao;
import com.alighthub.studentService.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentDao dao;
	 
	public void addStudent(Student student){  
		dao.save(student);  
    }
	
	@Override
	public List<Student> getAllStudents() {
		List<Student>list=dao.findAll();
		for(Student stu:list)
		{
			System.out.println(stu.getName());
		}
		return list;
	}
	
	@Override
	public void deleteRecord(int rollNo) {
		System.out.println("inside delete service..");
		dao.deleteById(rollNo);
	}
	
	@Override
	public Student findAllByUsernameAndPassword(String uname, String pass) {
		Student student= dao.findAllByUsernameAndPassword(uname, pass);
		return student;
	}

	@Override
	public Student findById(Integer rollNo) {
		System.out.println("inside findby id service..");
		Student stu=dao.findById(rollNo).get();
		return stu;
	}

	@Override
	public Student update(Student stud, int rollNo) {
		System.out.println("inside updateservice..");
		Student stu=dao.save(stud);
		return stu;
	}

		
	}

	

	


