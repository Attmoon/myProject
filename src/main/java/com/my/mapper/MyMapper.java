package com.my.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.my.domain.MyDto;

@Mapper
public interface MyMapper {
	List<MyDto> myInfo(@Param("mbrName") String mbrName, @Param("order") String order, @Param("prName") String prName, @Param("delyn") String delyn);
}
