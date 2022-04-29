package com.tech.board.mapper;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.tech.board.vo.BoardDto;

@MapperScan
public interface BoardMapper {
	//list
	public ArrayList<BoardDto> boardList();
	//detail
	public BoardDto boardDetail(String bseq);
	//uphit
	void upHit(String bseq);
	//write
	public void boardWrite(String bTitle, String bContent);
	//삭제
	public void boardDelete(String bseq);
	//취소
	public void boardCancel(String bseq);
	//수정
	public void boardModify(String bseq, String bTitle, String bContent);

}
