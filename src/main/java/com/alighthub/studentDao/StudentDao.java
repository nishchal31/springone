package com.alighthub.studentDao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.alighthub.model.Student;

public interface StudentDao extends JpaRepository<Student, Integer> {

	public Student findAllByUsernameAndPassword(String uname,String pass);

}
