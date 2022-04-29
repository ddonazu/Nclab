package com.tech.login.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.tech.login.mapper.LoginMapper;
import com.tech.login.vo.UsersDto;

@Service(value="loginService")
public class LoginServiceImpl implements LoginService{

	LoginMapper loginmapper;

	@Override
	public UsersDto loginProc(String id, String pw) {
		
		return null;
	}

	@Override
	public int signInProc(String id, String pw) {

		return 0;
	}

	@Override
	public String execute(Model model) {

		return null;
	}
}