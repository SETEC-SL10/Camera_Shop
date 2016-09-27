package com.setec.sl10.camerashop.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AdminController {
	
	@RequestMapping(value={"/admin/dashboard","/admin/","/admin/index","/admin/home"},method=RequestMethod.GET)
	public String dashboard(){
		return "admin/dashboard";
	}
	
	@RequestMapping(value={"/admin/layout"},method=RequestMethod.GET)
	public String layout(){
		return "admin/layout";
	}
	
	
	
}
