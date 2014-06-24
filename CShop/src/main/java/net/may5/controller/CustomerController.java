package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {

	@RequestMapping(value = "cst/home/homeImage.do")
	public String homeImage(Model model) {
		return "cst/home/homeImage";

	}
}
