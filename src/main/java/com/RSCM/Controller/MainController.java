package com.RSCM.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;

import com.RSCM.models.AdminLoginModel;
import com.RSCM.models.AdminRegistrationModel;
import com.RSCM.models.ContactModel;
import com.RSCM.models.EditIndexPageContentModel;
import com.RSCM.models.RecruitmentModel;
import com.RSCM.models.UpdateAboutPageContentModel;
import com.RSCM.models.UpdateCareerPageModel;
import com.RSCM.models.UpdateServicesModel;
import com.RSCM.models.UpdatesModel;
import com.RSCM.services.AboutPageServices;
import com.RSCM.services.AdminLoginService;
import com.RSCM.services.AdminRegistrationService;
import com.RSCM.services.CareerPageServices;
import com.RSCM.services.ContactService;
import com.RSCM.services.EditIndexPageServices;
import com.RSCM.services.RecruitmentServices;
import com.RSCM.services.ServicePageServices;
import com.RSCM.services.UpdatesServices;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

	 // Autowired Services
	 @Autowired
	 private EditIndexPageServices editIndexPageServices;
 
	 @Autowired
	 private ServicePageServices servicePageServices;
 
	 @Autowired
	 private AboutPageServices aboutPageServices;
 
	 @Autowired
	 private CareerPageServices careerPageServices;
 
	 @Autowired
	 private RecruitmentServices recruitmentServices;
 
	 @Autowired
	 private AdminLoginService adminLoginService;
 
	 @Autowired
	 private ContactService contactService;
 
	 @Autowired
	 private UpdatesServices updatesService;
 
	 @Autowired
	 private AdminRegistrationService adminRegistrationService;
 
	 // Admin Login Credentials
	 private final String mainAdminLoginUsername = "mainadminrscmpcr";
	 private final String mainAdminLoginPassword = "mainadminrscmpcr";
 
	 // Methods to Fetch Data
 
	 public void returnIndexPageData(Model model) {
		 EditIndexPageContentModel editIndexPageContentModel = editIndexPageServices.getIndexPageContentData();
		 model.addAttribute("DataForLoadIndexPage", editIndexPageContentModel);
	 }
 
	 public void returnAllUpdatesData(Model model) {
		 List<UpdatesModel> list = updatesService.GetAllUpdatesData();
		 model.addAttribute("AllUpdatesData", list);
	 }
 
	 public void returnUpdatedServicesData(Model model) {
		 List<UpdateServicesModel> list = servicePageServices.GetUpdatedServiceData();
		 model.addAttribute("UpdatedServicesData", list);
	 }
 
	 public void returnSpecificAdminLoginData(Model model, String fullname) {
		 List<AdminLoginModel> list = adminLoginService.GetSpecificAdminLoginData(fullname);
		 model.addAttribute("SpecificAdminLoginData", list);
		 model.addAttribute("SpecificAdminLoginCount", list.size());
	 }
 
	 public void returnUpdatedAboutPageData(Model model) {
		 UpdateAboutPageContentModel updateAboutPageContentModel = aboutPageServices.GetUpdatedAboutPageData();
		 model.addAttribute("UpdatedAboutPageData", updateAboutPageContentModel);
	 }
 
	 public void returnCareerPageData(Model model) {
		 UpdateCareerPageModel updateCareerPageModel = careerPageServices.GetCareerPageData();
		 model.addAttribute("CareerPageData", updateCareerPageModel);
	 }
 
	 public void returnContactData(Model model) {
		 List<ContactModel> list = contactService.GetContactData();
		 model.addAttribute("ContactData", list);
	 }
 
	 public void returnAdminRegistrationData(Model model) {
		 List<AdminRegistrationModel> list = adminRegistrationService.GetAdminRegistrationData();
		 model.addAttribute("AdminRegistrationData", list);
	 }
 
	 public void returnAdminLoginData(Model model) {
		 List<AdminLoginModel> list = adminLoginService.GetAdminLoginData();
		 model.addAttribute("AdminLoginData", list);
	 }
 
	 public void returnSpecificUpdatedServicesData(Model model, String ServiceHeading) {
		 UpdateServicesModel updateServicesModel = servicePageServices.GetSpecificUpdatedServiceData(ServiceHeading);
		 model.addAttribute("SpecificUpdatedServicesData", updateServicesModel);
	 }

	// Index Page Content and Reference

	@GetMapping("/")
	public String HomePage(Model model) {
		returnIndexPageData(model);
		returnUpdatedServicesData(model);
		returnUpdatedAboutPageData(model);
		return "index";
	}

	@GetMapping("/index")
	public String IndexPage(Model model) {
		returnIndexPageData(model);

		return "index";
	}

}
