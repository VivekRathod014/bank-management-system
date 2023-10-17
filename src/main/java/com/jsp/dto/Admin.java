package com.jsp.dto;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int a_id;
	private String a_name;
	private String a_password;

	@OneToMany(mappedBy = "admin")
	private List<BankManager> bankManagers;

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public String getA_password() {
		return a_password;
	}

	public void setA_password(String a_password) {
		this.a_password = a_password;
	}

	public List<BankManager> getBankManagers() {
		return bankManagers;
	}

	public void setBankManagers(List<BankManager> bankManagers) {
		this.bankManagers = bankManagers;
	}
	
	
}
