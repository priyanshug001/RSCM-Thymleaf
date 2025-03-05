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

	@GetMapping("/")
	public String HomePage(Model model) {
		return "index";
	}

	@GetMapping("/error")
    public String handleError() {
        return "error"; // Ye "templates/error.html" file load karega
    }

    @GetMapping("/routes")
    @ResponseBody
    public String showRoutes() {
        RequestMappingHandlerMapping handlerMapping = applicationContext.getBean(RequestMappingHandlerMapping.class);
        return handlerMapping.getHandlerMethods().keySet().toString();
    }
	
       @GetMapping("/index")
	public String IndexPage(Model model) {
		return "/templates/index.html";
	}

	@GetMapping("/about")
	public String aboutPage(){
	return "about";
	}
}
