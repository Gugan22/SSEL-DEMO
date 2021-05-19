package com.demoApp.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demoApp.Util.cash_Util;
import com.demoApp.handler.Handler;

@Controller
public class cash_Controller {

	
	@GetMapping("api/cashMode")
	public static void getCashMode(HttpServletResponse res) throws IOException {
		((Handler)()-> (cash_Util.getAll(res))).handle(res);
	}
	
	@GetMapping("api/getCashCode")
	public static void getCode(HttpServletResponse res, @RequestParam String name) throws IOException {
		((Handler)()-> (cash_Util.getCode(res, name))).handle(res);
	}
}
