package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_dashboardController {
	
	@RequestMapping("/financials_dashboard") //url
	public ModelAndView fdash()
	{
		ModelAndView fd = new ModelAndView();
		fd.setViewName("financials_dashboard");//.jsp file
		return fd;
	}
}