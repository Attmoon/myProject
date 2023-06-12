package com.my.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.my.domain.MyDto;
import com.my.service.MyService;

@Controller
public class MyController {
	@Autowired
	private MyService service;
	
	@RequestMapping("/testt")
	public void list(Model model, @RequestParam(name = "mbrName", defaultValue = "") String mbrName, @RequestParam(name = "order", defaultValue = "") String order,
			@RequestParam(name = "prName", defaultValue = "") String prName) {
		List<MyDto> list = service.selectInfo(mbrName, order, prName);
		System.out.println(list);
		model.addAttribute("list", list);
	}
}
