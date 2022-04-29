package com.tech.login.api;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.login.mapper.LoginMapper;
import com.tech.login.service.LoginService;
import com.tech.login.vo.UsersDto;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class LoginController {
	@Autowired
	LoginService loginservice;
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public String goSign() {
		
		return "signIn_center";
	}
	
	@RequestMapping(value="/signInProc", method=RequestMethod.POST)
	public String goSignProc(HttpServletRequest request, Model model) {
		System.out.println("pass by signInProc");
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		
		LoginMapper loginmapper=sqlSession.getMapper(LoginMapper.class);
		UsersDto usersdto=loginmapper.loginProc(id,pw);
		model.addAttribute("request",usersdto);
		
	//join처리
		int insertResult=loginmapper.signInProc(id,pw);
		System.out.println("확인해보자보자");
		if (insertResult==1) { //가입 성공
			System.out.println("가입성공");
			return "redirect:/";
		}else {
			System.out.println("가입실패");
			return "redirect:/signIn";
		}
	
	}
	
	@RequestMapping(value="/loginProc", method=RequestMethod.POST)
	public String loginProc(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		System.out.println("pass by loginProc");
		
		request.getSession();//세션 생성
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		
		LoginMapper loginmapper=sqlSession.getMapper(LoginMapper.class);
		UsersDto usersdto=loginmapper.loginProc(id,pw); //아이디 검색
		String checkPw = "";
		try { //널값체크하는거 널이면 오류가 나고 오류가 나면 바로 캐치로 넘어감
			checkPw = usersdto.getPw(); //위에 pw랑 이거랑 맞는지 비교하려고 만든거
			//위에꺼 usersdto.getPw()를 봤더니 널이네? 널포인트 익셉션 오류 바로 내는거 아까처럼 그러면 오류난거 취소하고 그냥 캐치로 넘어감
			//좀 다르지만 if else라고 보면 if(1==2)면 조건이 안맞으니까 else로 넘어가듯이 try catch는 try 안에꺼 진행중에 오류가 나면 여태 한거 다 무시하고 바로 캐치로 넘어감

		} catch (Exception e) {
			System.out.println("널인갑네");
		}
		
		if (usersdto != null && pw.equals(checkPw)) { //검색이 됐다면 널이 아니고 pw랑 checkPw가 같음
			System.out.println("로그인 성공");
			session.setAttribute("userid", usersdto.getId());//세션에 userid라는 이름으로 아이디 저장
			return "redirect:/";
		} else { // 널이거나 비번이 안맞는경우
			return "redirect:login";
		}

	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpSession session) {
		System.out.println("pass by logout");
		
		session.removeAttribute("userid");
		
		return "redirect:/";
	}
}
