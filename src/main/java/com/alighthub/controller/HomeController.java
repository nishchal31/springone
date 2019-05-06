package com.alighthub.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.alighthub.model.Student;
import com.alighthub.studentService.StudentService;

@Controller
public class HomeController {

	@Autowired
	StudentService ser;
	

	@RequestMapping("/")
	public String openIndex() {
		return "index";
	}

	
	  @RequestMapping("/regStudent") 
	  public String doRegister(@ModelAttribute Student student, @RequestParam("address")String add) {
	  System.out.println("inside register controller...");
	  
	  ser.addStudent(student);
	  return "index";
	  
	  }
	 

	@RequestMapping("/showAll")
	public String showAll(@ModelAttribute Student student, Model model) {
		System.out.println("inside show all controller...");
		List<Student> list = ser.getAllStudents();
		model.addAttribute("data", list);
		return "successpage";

	}

	@RequestMapping("/delete")
	public String deleteRecord(@RequestParam("id") Integer id, Model model, Student stu) {
		System.out.println("inside delete controller..");
		ser.deleteRecord(id);
		showAll(stu, model);

		return "successpage";

	}

	@RequestMapping("/log")
	public String doLogin(Student student, @RequestParam String usernme, @RequestParam String passwrd, Model model) {
		System.out.println("inside login controller..");
		System.out.println("Username from login page :" + usernme);
		System.out.println("Password from login page :" + passwrd);
		Student stu = ser.findAllByUsernameAndPassword(usernme, passwrd);
		boolean flag = false;
		if (usernme.equals(stu.getUsername()) && passwrd.equals(stu.getPassword())) {
			flag = true;
		}
		if (flag == true) {
			System.out.println("login success");
			showAll(student, model);
			return "successpage";
		} else {
			System.out.println("invalid credentials..");
			String msg1 = "Sorry " + usernme + ". You entered an incorrect password";
			model.addAttribute("errormessage", msg1);
			return "errorpage";
		}
	}

	@RequestMapping("/edit")
	public String findStudentById(@RequestParam("id") Integer id, Model model) {
		System.out.println("id from radio button: " + id);
		System.out.println("inside findbyid controller..");
		Student student = ser.findById(id);
		model.addAttribute("data", student);
		return "update";

	}

	@RequestMapping("/update")
	public String doUpdate(@ModelAttribute Student stu, Model model, int rollNo) {
		System.out.println("inside update controller");

		ser.update(stu, rollNo);
		showAll(stu, model);
		return "successpage";
	}

}
