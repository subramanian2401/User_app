package org.jsp.user_mvc_app.controller;


import org.jsp.user_mvc_app.dao.Userdao;
import org.jsp.user_mvc_app.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserApp {
	@Autowired
	private Userdao userdao;

	@RequestMapping("/open-view")
	public String openview(String view) {
		return view;
	}
	
	@RequestMapping("/open-login")
	public ModelAndView openlogin() {
		ModelAndView view = new ModelAndView();
		view.setViewName("loginpage");
		view.addObject("u", new User());
		return view;
	}
	@RequestMapping("/open-update")
	public ModelAndView updatelogin() {
		ModelAndView view = new ModelAndView();
		view.setViewName("update");
		view.addObject("u", new User());
		return view;
	}
	@RequestMapping("/open-findbyid")
	public ModelAndView finduserbyid() {
		ModelAndView view = new ModelAndView();
		view.setViewName("findbyid");
		view.addObject("u", new User());
		return view;
	}
	@RequestMapping("/open-deleteuser")
	public ModelAndView deleteuser(ModelAndView view) {
		view.setViewName("deleteuser");
		view.addObject("u",new User());
		return view;
		
	}
	@RequestMapping("/open-verifybyphone")
	public ModelAndView verifybyphone(ModelAndView view) {
		view.setViewName("verifybyphone");
		view.addObject("u",new User());
		return view;
	}
	@RequestMapping("/open-verifybyemail")
	public ModelAndView verifybyemail(ModelAndView view) {
		view.setViewName("verifybyemail");
		view.addObject("u",new User());
		return view;
	}

	@PostMapping(value = "/save")
	public ModelAndView save(@ModelAttribute User u, ModelAndView view) {
		u = userdao.saveuser(u);
		view.setViewName("printsave");
		view.addObject("message", "User saved With the ID: " + u.getId());
		return view;

	}
	
	@PostMapping(value = "/update")
	public ModelAndView update(@ModelAttribute User u, @RequestParam int id,ModelAndView view) {
		u = userdao.updateuser(u, id);
		if(u!=null) {
			view.setViewName("printupdate");
			view.addObject("message", "User Updated With the ID: " + u.getId());	
			return view;
		}else {
		view.setViewName("print");
		view.addObject("message", " Cannot update User as Id is invalid");
		return view;
		}

	}
	
	@PostMapping(value = "/findbyid")
	public ModelAndView findbyid(@RequestParam int id,ModelAndView view) {
		
		User u = userdao.findbyid(id);
		if(u!=null) {
			view.setViewName("display");
			view.addObject("userid",u.getId());
			view.addObject("name",u.getName());
			view.addObject("email",u.getEmail());
			view.addObject("phone",u.getPhone());
			view.addObject("gender",u.getGender());
			
			return view;
		}
		view.setViewName("print");
		view.addObject("error","Cannot find User With ID:");
		return view;

	}
	@PostMapping(value="/verifybyphone")
	public ModelAndView verifybyphone(@RequestParam long phone,@RequestParam String password,ModelAndView view) {
		User u=userdao.verifybyphone(phone,password);
		if(u!=null) {
			view.setViewName("display");
			 view.addObject("userid",u.getId());
	    	 view.addObject("name",u.getName());
	    	 view.addObject("email",u.getEmail());
	    	 view.addObject("gender",u.getGender());
	    	 view.addObject("phone",u.getPhone());
		return view;
		}else {
		view.setViewName("verifyerror");
		view.addObject("verifybyerror","Cannot find User With Phone:");
		return view;
		}
	}
	
	@PostMapping(value="/verifybyemail")
	public ModelAndView verifybyemail(@RequestParam String email,@RequestParam String password,ModelAndView view) {
     User u=userdao.verifybymail(email, password);
     if(u!=null) {
    	 view.setViewName("display");
    	 view.addObject("userid",u.getId());
    	 view.addObject("name",u.getName());
    	 view.addObject("email",u.getEmail());
    	 view.addObject("gender",u.getGender());
    	 view.addObject("phone",u.getPhone());
    	 return view;
    	 
     }else {
    	 view.setViewName("verifyerror");
    	 view.addObject("verifybyerror","Cannot Find User!! 'Invalid creditials'");
    	 return view;
     }
	}
	@PostMapping("/deleteuser")
	public ModelAndView deleteuser(@RequestParam int id,ModelAndView view) {
		boolean u=userdao.delete(id);
		if(u) {
			view.setViewName("deletesucess");
			view.addObject("message","User Deleted Sucessfully");
			return view;
			
		}else {
			view.setViewName("deletefailure");
			view.addObject("message","User Not Deleted Error");
			return view;
			
		}
		
	}
	

	
	
	
	

}
