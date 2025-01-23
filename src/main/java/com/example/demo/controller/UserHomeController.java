package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.vo.Member;

@Controller
public class UserHomeController {
	@RequestMapping("/user/home/main")
	@ResponseBody
	public String showMain() {
		return "하이";
	}
	@RequestMapping("/user/home/getInt")
	@ResponseBody
	public int getInt() {
		int a = 1;
		int b = 2;
		
		return a+b;
	}
	@RequestMapping("/user/home/getString")
	@ResponseBody
	public String getString() {
		String b = "Hi";
		
		return b;
	}
	
	@RequestMapping("/user/home/getList")
	@ResponseBody
	public List<String> getList() {
		List<String> alist = new ArrayList<>();
		alist.add("Hit");
		alist.add("add");
		
		
		
		return alist;
	}
	
	@RequestMapping("/user/home/getMap")
	@ResponseBody
	public Map<String, Object> getMap() {
		Map<String,Object> map = new HashMap<>();
		map.put("Hit",11);
		map.put("hi",true);
		
		
		
		return map;
	}
	
	
	
	@RequestMapping("/user/home/getBoolean")
	@ResponseBody
	public boolean getBoolean() {
	
		return true;
		
	}
	
	@RequestMapping("/user/home/getMember")
	@ResponseBody
	public Member getMember() {
		
		Member member = new Member(1, "회원1", "1234");
		
		
		
		return member;
	
	}
	
	
	
	
	
	
}


