package com.demoApp.Util;

import javax.servlet.http.HttpServletResponse;

import org.javalite.activejdbc.Model;

import com.demoApp.model.Location;


public class location_Util extends Model{

	public static String getAll(HttpServletResponse res) {
		return Location.findAll().toJson(false);
	}
	
	public static String getCode(HttpServletResponse res, String name) {
		return Location.where("locname=?", name).toJson(false);
	}
}
