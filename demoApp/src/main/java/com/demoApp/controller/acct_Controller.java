package com.demoApp.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demoApp.Util.acct_Util;
import com.demoApp.handler.Handler;

@Controller
public class acct_Controller {

	@GetMapping("api/getallAcct")
	public static void getAll(HttpServletResponse res) throws IOException {
		((Handler)()-> (acct_Util.getAll(res))).handle(res);
	}
	
	@GetMapping("api/getAcctCode")
	public static void getCode(HttpServletResponse res, @RequestParam String name) throws IOException {
		((Handler)()-> (acct_Util.getCode(res, name))).handle(res);
	}
}
