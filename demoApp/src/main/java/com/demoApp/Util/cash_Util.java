package com.demoApp.Util;

import javax.servlet.http.HttpServletResponse;

import org.javalite.activejdbc.Model;

import com.demoApp.model.Subschmas;

public class cash_Util extends Model{

	public static String getAll(HttpServletResponse res) {
		return Subschmas.findAll().toJson(false);
		
	}
	
	public static String getCode(HttpServletResponse res, String name) {
		return Subschmas.where("subschname=?", name).toJson(false);
	}
}
