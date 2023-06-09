package com.my.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.my.domain.MyDto;

@Mapper
public interface MyMapper {
	List<MyDto> myInfo();
}
