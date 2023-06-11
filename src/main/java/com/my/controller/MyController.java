package com.my.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.domain.MyDto;
import com.my.service.MyService;

@Controller
public class MyController {
	@Autowired
	private MyService service;
	
	@RequestMapping("index")
	public void list(Model model) {
		List<MyDto> list = service.selectInfo();
		model.addAttribute("list", list);
		System.out.println("@@@@@@@@@@");
		System.out.println(list);
	}
}
