package com.blap.blapweb;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "Main";
	}
	
	@RequestMapping(value = "/Bucketlist", method = RequestMethod.GET)
	public void Bucketlist() {

	}
	
	@RequestMapping(value = "/Budget", method = RequestMethod.GET)
	public void Budget() {
		
	}
	
	@RequestMapping(value = "/Mypage", method = RequestMethod.GET)
	public void Mypage() {
	
	}
	
	@RequestMapping(value = "/AddList", method = RequestMethod.GET)
	public void AddList() {
	
	}
	
	@RequestMapping(value = "/EditList", method = RequestMethod.GET)
	public void EditList() {
	
	}
	
	@RequestMapping(value = "/View", method = RequestMethod.GET)
	public void View() {
	
	}
	
	@RequestMapping(value = "/ExpenditureStatistics", method = RequestMethod.GET)
	public void ExpenditureStatistics() {
	
	}
	
	@RequestMapping(value = "/SignIn", method = RequestMethod.GET)
	public void SignIn() {
	
	}
	
//	@RequestMapping(value = "/addform", method = RequestMethod.POST)
//	public String write() {
//		return "redirect:list";
//	}
	
//	@RequestMapping(value = "/editform", method = RequestMethod.POST)
//	public String editform() {
//		return "redirect:view";
//	}


//	@RequestMapping(value = "/editform", method = RequestMethod.GET)
//	public void update() {
//	}
	
//	@RequestMapping(value = "/delete", method = RequestMethod.GET)
//	public String delete() {
//		System.out.println("글 삭제 처리");
//		return "redirect:/";
//	}
}