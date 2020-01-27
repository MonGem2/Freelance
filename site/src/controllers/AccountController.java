package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dto.LoginDTO;

@Controller
public class AccountController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showPage(Model model) {
		LoginDTO loginDTO = new LoginDTO();
		
		loginDTO.setEmail("semen@gmail.com");
		
		model.addAttribute("user", loginDTO);
		
		return "account/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
    public String submit(@ModelAttribute("user")LoginDTO credentials, 
      BindingResult result, ModelMap modelMap, Model model) {
		
		System.out.println("------Good Work-------");
		String email=credentials.getEmail();
		System.out.println("-------------"+email);
		//String password=user.getPassword();
		if(email.equals("admin@gmail.com"))
		{
			model.addAttribute("email", email);
			return "account/user-profile";
		}
		else
			return "account/login";
        
    }
}

