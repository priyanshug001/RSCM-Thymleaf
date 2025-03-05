package com.RSCM.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.context.ApplicationContext;

@Controller
public class MainController {

	@Autowired
    private ApplicationContext applicationContext;
	

	// Index Page Content and Reference

	@GetMapping("/index")
	public String HomePage(Model model) {
		return "redirect:/about";
	}

	@GetMapping("/error")
    public String handleError() {
        return "redirect:/about"; // Ye "templates/error.html" file load karega
    }
	
       @GetMapping("/about")
	public String IndexPage(Model model) {
		return "redirect:/about";
	}

	@GetMapping("/")
	public String aboutPage(){
	return "redirect:/about";
	}
}
