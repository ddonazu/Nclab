package com.tech.login.mapper;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.tech.login.vo.UsersDto;

@MapperScan
public interface LoginMapper {
	List<Map<String, Object>> getList();
	
	public int signInProc(String id, String pw);

	public UsersDto loginProc(String id, String pw);
		
}
