package com.demoApp.Util;

import javax.servlet.http.HttpServletResponse;

import org.javalite.activejdbc.Model;

import com.demoApp.model.schmast;


public class schmast_Util extends Model{

	public static String getAll(HttpServletResponse res) {
		return schmast.findAll().toJson(false);
	}
	
	public static String getCode(HttpServletResponse res, String name) {
		return schmast.where("schname=?", name).toJson(false);
	}
}
