package com.demoApp.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demoApp.Util.result_Util;
import com.demoApp.handler.Handler;

@Controller
public class result_Controller {

	@GetMapping("api/result")
	public static void getAll(HttpServletResponse res) throws IOException {
		((Handler)()-> (result_Util.getAll(res))).handle(res);
	}
	
	@GetMapping("api/newResult")
	public static void newResult(@RequestParam String location, @RequestParam String sales, @RequestParam String company, @RequestParam String acct,HttpServletResponse res ) throws IOException, SQLException {
		result_Util.addResult(location, sales, company, acct);
		res.getWriter().print("Sucess");
	}
	
}
