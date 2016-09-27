package com.setec.sl10.camerashop.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ViewController {
	
	@RequestMapping(value={"/","/index","/home"},method=RequestMethod.GET)
	public String index(ModelMap map){
		map.put("productPage", "all");
		System.out.println("Page: "+"all");
		return "index";
	}
	
	@RequestMapping(value={"/{type}"},method=RequestMethod.GET)
	public String ProductType(@PathVariable("type") String type,ModelMap map){
		map.put("productPage", type);
		System.out.println("Page: "+type);
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
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String detail(@RequestParam("p") String productID,@RequestParam("c") String colorID,@RequestParam("s") String serial,ModelMap model){
		model.put("productID", productID);
		model.put("colorID", colorID);
		model.put("serial", serial);
		
//		System.out.println("PID: "+productID);
//		System.out.println("Color: "+colorID);
//		System.out.println("SN: "+serial);
		
		
		return "user/detail";
	}
	
	@RequestMapping(value="/wishlist",method=RequestMethod.GET)
	public String wishlist(){
		return "user/wishlist";
	}
	
	@RequestMapping(value="/cart",method=RequestMethod.GET)
	public String cart(){
		return "user/cart";
	}
	
	@RequestMapping(value="/account",method=RequestMethod.GET)
	public String account(){
		return "user/account";
	}
	
	@RequestMapping(value="/warranty",method=RequestMethod.GET)
	public String warranty(){
		return "user/warranty";
	}
	
	@RequestMapping(value="/promotion",method=RequestMethod.GET)
	public String promotion(){
		return "user/promotion";
	}
	
	@RequestMapping(value="/about",method=RequestMethod.GET)
	public String about(){
		return "user/about";
	}
	
	
	
}

