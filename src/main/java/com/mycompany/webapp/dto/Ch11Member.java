package com.mycompany.webapp.dto;

import lombok.Data;

@Data
public class Ch11Member {
	private String mid;
	private String mpassword;
	private String mname;
	private String mtype;
	private String mjob;
	private int mcity;
	
	private String[] mlanguage;
	private int[] mskill;
}