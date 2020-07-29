package com.JavaWebApplication.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Logincontroller {
	@RequestMapping("/Login")
	public String home() {
		return "index.jsp";
	}
}
