package com.tech.board.api;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.board.mapper.BoardMapper;
import com.tech.board.service.BoardService;
import com.tech.board.vo.BoardDto;

@Controller
public class BoardController {
	BoardService boardService;
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public String boardList(HttpServletRequest request, Model model) {
		
		System.out.println("pass by boardList");
		
		BoardMapper boardmapper=sqlSession.getMapper(BoardMapper.class);
		List<BoardDto> boardList=boardmapper.boardList();
		
		System.out.println("boardList : "+boardList);
		model.addAttribute("boardList", boardList);
		
		return "boardList";
	}
	
	@RequestMapping("/boardDetail")
	public String boardDetail(HttpServletRequest request, Model model) {
		System.out.println("pass by boardDetail");
		
		String bseq=request.getParameter("bseq");
		
		BoardMapper boardmapper=sqlSession.getMapper(BoardMapper.class);
		boardmapper.upHit(bseq);
		
		BoardDto boarddto=boardmapper.boardDetail(bseq);
		model.addAttribute("boardDetail",boarddto);
		
		return "boardDetail";
	}
	
	@RequestMapping("boardWriteDetail")
	public String boardWriteDetail() {
		System.out.println("pass by boardWriteDetail");
		
		return "boardWriteDetail";
	}
	
	@RequestMapping("boardWrite")
	public String boardWrite(HttpServletRequest request, Model model) {
		System.out.println("pass by boardWrite");
		
		String bTitle=request.getParameter("bTitle");
		String bContent=request.getParameter("bContent");
		
		BoardMapper boardmapper=sqlSession.getMapper(BoardMapper.class);
		boardmapper.boardWrite(bTitle,bContent);
		
		return "redirect:boardList";
	}
	
	@RequestMapping("/boardUpdate")
	public String boardUpdate(HttpServletRequest request, Model model) {
		System.out.println("pass by boardUpdate");
		
		String bseq=request.getParameter("bseq");
		System.out.println(bseq);
		BoardMapper boardmapper=sqlSession.getMapper(BoardMapper.class);
		
		BoardDto boarddto=boardmapper.boardDetail(bseq);
		System.out.println("bseq : "+boarddto.getBseq());
		model.addAttribute("boardDetail", boarddto);
		
		return "boardUpdate";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/boardModify")
	public void boardModify(HttpServletRequest request, Model model, HttpServletResponse response) throws IOException {
		System.out.println("pass by boardModify");
		
		String bseq=request.getParameter("bseq");
		String bTitle=request.getParameter("bTitle");
		String bContent=request.getParameter("bContent");
		
		BoardMapper boardmapper=sqlSession.getMapper(BoardMapper.class);
		boardmapper.boardModify(bseq, bTitle, bContent);
		response.sendRedirect("boardDetail?bseq="+bseq);
}
	@RequestMapping("/boardDelete")
	public String boardDelete(HttpServletRequest request, Model model) {
		System.out.println("pass by boardDelete");
		
		String bseq=request.getParameter("bseq");
		
		BoardMapper boardmapper=sqlSession.getMapper(BoardMapper.class);
		boardmapper.boardDelete(bseq);
		
		return "redirect:boardList";
	}
	
	@RequestMapping("boardCancle")
	public String boardCancle(HttpServletRequest request, Model model) {
		System.out.println("pass by boardCancle");
		
		String bseq=request.getParameter("bseq");
		BoardMapper boardmapper=sqlSession.getMapper(BoardMapper.class);
		boardmapper.boardCancel(bseq);
		
		return "redirect:boardDetail";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String goLogin(HttpServletRequest request) {
		System.out.println("pass by login");
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		request.getSession().setAttribute("id", id);
		request.getSession().setAttribute("pw", pw);
		
		System.out.println("id: "+id);
		System.out.println("pw: "+pw);
		
		return "login_center";
	}

}
