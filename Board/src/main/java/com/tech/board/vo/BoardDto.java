package com.tech.board.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class BoardDto {

	private String bseq;
	private String btitle;
	private String bcontent;
	private Date bdate;
	private int bhit;
	
	public String getBseq() {
		return bseq;
	}

	public void setBseq(String bseq) {
		this.bseq = bseq;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public int getBhit() {
		return bhit;
	}

	public void setBhit(int bhit) {
		this.bhit = bhit;
	}
	
	public BoardDto() {
		// TODO Auto-generated constructor stub
	}



}

