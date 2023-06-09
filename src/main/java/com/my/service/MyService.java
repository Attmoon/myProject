package com.my.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.domain.MyDto;
import com.my.mapper.MyMapper;

@Service
public class MyService {
	@Autowired
	private MyMapper mapper;
	
	public List<MyDto> selectInfo() {
		return mapper.myInfo();
	}
}
