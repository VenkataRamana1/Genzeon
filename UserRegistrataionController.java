package org.websparrow.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.websparrow.dao.UserDao;
import org.websparrow.model.User;

@Controller
public class UserRegistrataionController {
	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView userRegistration(@RequestParam("userid") int userid,@RequestParam("email") String email,@RequestParam("fullname") String fullname,
			@RequestParam("password") String password,@RequestParam("role") String role) {

		ModelAndView mv = new ModelAndView();

		User user = new User();
		user.setUserid(userid);
		user.setPassword(password);
		user.setFullname(fullname);
		user.setEmail(email);
		user.setRole(role);
		
		int counter = userDao.registerUser(user);

		if (counter > 0) {
			mv.addObject("msg", "User registration successful.");
		} else {
			mv.addObject("msg", "Error- check the console log.");
		}

		mv.setViewName("registration");

		return mv;

	}

}
