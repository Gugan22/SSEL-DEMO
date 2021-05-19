package com.demoApp.Util;

import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import org.javalite.activejdbc.Model;

import com.demoApp.db.db_Util;
import com.demoApp.model.Demoresult;

public class result_Util extends Model{

	
	public static String addResult(String location, String sales, String company, String acct ) throws SQLException {
		db_Util.openTransaction();
		Demoresult fineUser = new Demoresult();
		boolean status = fineUser.set("LocCode", location, "STCode", sales, "CostCompCode", company, "AcCode", acct).insert();
		System.out.print(status);
		db_Util.commitTransaction();
		db_Util.close();
		return "Sucess";
	}
	
	public static String getAll(HttpServletResponse res) {
		return Demoresult.findAll().toJson(false);
	}
}
