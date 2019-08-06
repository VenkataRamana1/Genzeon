package org.websparrow.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.websparrow.dao.UserDao;
import org.websparrow.model.User;

@Controller
public class UserLoginController {

	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("userid") int userId, @RequestParam("password") String password) {

		ModelAndView mv = new ModelAndView();

		User user = new User();
		user.setUserid(userId);
		user.setPassword(password);

		String role = userDao.loginUser(user);

		if(user!=null && role!=null && role.equalsIgnoreCase("admin")) {


			mv.addObject("msg","Welcome admin you have successfully loggged in");
			mv.setViewName("welcome");

		}
		else if(user!=null && role!=null && role.equalsIgnoreCase("hr")) {
			mv.addObject("msg","Welcome hr you have successfully loggged in");
			mv.setViewName("welcome");

		}
		else if(user.getRole()=="recruiter") {
			mv.addObject("msg","Welcome recruiter you have successfully loggged in");
			mv.setViewName("welcome");

		}
		else if(user.getRole()=="manager") {
			mv.addObject("msg","Welcome manager you have successfully loggged in");
			mv.setViewName("welcome");

		}
		else {

			mv.addObject("msg", "Invalid user id or password.");
			mv.setViewName("login");
		}

		return mv;

	}
	 

}
