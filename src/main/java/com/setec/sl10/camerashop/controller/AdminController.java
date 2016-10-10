package com.setec.sl10.camerashop.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AdminController {
	
	@RequestMapping(value={"/admin/dashboard","/admin","/admin/index","/admin/home"},method=RequestMethod.GET)
	public String dashboard(){
		return "admin/dashboard";
	}
	
	@RequestMapping(value={"/admin/product/{type}"},method=RequestMethod.GET)
	public String product(@PathVariable("type") String type,ModelMap map){
		map.put("productPage", type);
		return "admin/product";
	}
	
	@RequestMapping(value={"/admin/import/{type}"},method=RequestMethod.GET)
	public String Import(@PathVariable("type") String type,ModelMap map){
		map.put("productPage", type);
		return "admin/import";
	}
	
	@RequestMapping(value={"/admin/staff"},method=RequestMethod.GET)
	public String staff(){
		return "admin/staff";
	}
	
	@RequestMapping(value={"/admin/role"},method=RequestMethod.GET)
	public String role(){
		return "admin/role";
	}		
			
	@RequestMapping(value={"/admin/customer"},method=RequestMethod.GET)
	public String layout(){
		return "admin/customer";
	}
	
	@RequestMapping(value={"/admin/supplier"},method=RequestMethod.GET)
	public String supplier(){
		return "admin/supplier";
	}
	
	@RequestMapping(value={"/admin/color"},method=RequestMethod.GET)
	public String color(){
		return "admin/color";
	}
	
	@RequestMapping(value={"/admin/category"},method=RequestMethod.GET)
	public String category(){
		return "admin/category";
	}
	
	@RequestMapping(value={"/admin/model"},method=RequestMethod.GET)
	public String model(){
		return "admin/model";
	}
	
	@RequestMapping(value={"/admin/brand"},method=RequestMethod.GET)
	public String brand(){
		return "admin/brand";
	}
	
	
	
	
	
}
