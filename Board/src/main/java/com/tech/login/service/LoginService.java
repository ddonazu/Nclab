package com.tech.login.service;

import org.springframework.ui.Model;

import com.tech.login.vo.UsersDto;

public interface LoginService {

	public String execute(Model model);
	UsersDto loginProc(String id, String pw);
	int signInProc(String id, String pw);

}
