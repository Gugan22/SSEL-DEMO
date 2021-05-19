package com.demoApp.Util;

import javax.servlet.http.HttpServletResponse;

import org.javalite.activejdbc.Model;

import com.demoApp.model.Acctmas;

public class acct_Util extends Model{

	public static String getAll(HttpServletResponse res) {
		return Acctmas.findAll().toJson(false);
	}
	
	public static String getCode(HttpServletResponse res, String name) {
		return Acctmas.where("acctname=?", name).toJson(false);
	}
}
