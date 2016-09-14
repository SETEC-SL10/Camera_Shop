package com.setec.sl10.camerashop.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ViewController {
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String index(){
		return "index";
	}
	
	@RequestMapping(value="/checkout",method=RequestMethod.GET)
	public String checkout(){
		return "user/checkout";
	}
	
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String contact(){
		return "user/contact";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String register(){
		return "user/register";
	}
	
	@RequestMapping(value="/product",method=RequestMethod.GET)
	public String product(){
		return "user/product";
	}
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String detail(){
		return "user/detail";
	}
	
}

