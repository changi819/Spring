package com.mega.mvc08;

public class BbsDTO {
	int bbsnum;
	String title;
	String content;
	String writer;
	String bbsdate;
	int hits;
	
	public int getBbsnum() {
		return bbsnum;
	}
	public void setBbsnum(int bbsnum) {
		this.bbsnum = bbsnum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String name) {
		this.writer = name;
	}
	public String getBbsdate() {
		return bbsdate;
	}
	public void setBbsdate(String date) {
		this.bbsdate = date;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	
	@Override
	public String toString() {
		return "BbsDTO [bbsnum=" + bbsnum + ", title=" + title + ", content=" + content + ", writer=" + writer + ", date="
				+ bbsdate + ", hits=" + hits + "]";
	}
	
}
