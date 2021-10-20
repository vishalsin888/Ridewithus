package com.car.pooling.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class RegisterUser {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userid;
	private String username;
	private String useremail;
	private String usermobile;
	private String userpassword;
	
	public RegisterUser() {
		super();
	}

	public RegisterUser(String username, String useremail, String usermobile, String userpassword) {
		super();
		this.username = username;
		this.useremail = useremail;
		this.usermobile = usermobile;
		this.userpassword = userpassword;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUsermobile() {
		return usermobile;
	}

	public void setUsermobile(String usermobile) {
		this.usermobile = usermobile;
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

}
