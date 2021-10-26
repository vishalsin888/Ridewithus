package com.car.pooling.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FeedbackUser {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long feedid;
	private String feedemail;
	private String feedname;
	private String feedsubject;
	private String feedcomment;
	
	public FeedbackUser() {
		super();
	}
	public FeedbackUser(String feedemail, String feedname, String feedsubject, String feedcomment) {
		super();
		this.feedemail = feedemail;
		this.feedname = feedname;
		this.feedsubject = feedsubject;
		this.feedcomment = feedcomment;
	}
	public Long getFeedid() {
		return feedid;
	}
	public void setFeedid(Long feedid) {
		this.feedid = feedid;
	}
	public String getFeedemail() {
		return feedemail;
	}
	public void setFeedemail(String feedemail) {
		this.feedemail = feedemail;
	}
	public String getFeedname() {
		return feedname;
	}
	public void setFeedname(String feedname) {
		this.feedname = feedname;
	}
	public String getFeedsubject() {
		return feedsubject;
	}
	public void setFeedsubject(String feedsubject) {
		this.feedsubject = feedsubject;
	}
	public String getFeedcomment() {
		return feedcomment;
	}
	public void setFeedcomment(String feedcomment) {
		this.feedcomment = feedcomment;
	}
	@Override
	public String toString() {
		return "FeedbackUser [feedid=" + feedid + ", feedemail=" + feedemail + ", feedname=" + feedname
				+ ", feedsubject=" + feedsubject + ", feedcomment=" + feedcomment + "]";
	}
	
}
