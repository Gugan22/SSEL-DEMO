package com.demoApp.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demoApp.Util.location_Util;
import com.demoApp.handler.Handler;

@Controller
public class location_Controller {

	@GetMapping("api/location")
	@CrossOrigin("null")
	public static void getCashMode(HttpServletResponse res) throws IOException {
		((Handler)()-> (location_Util.getAll(res))).handle(res);
	}
	
	@GetMapping("api/getLocCode")
	public static void getCode(HttpServletResponse res, @RequestParam String name) throws IOException {
		((Handler)()-> (location_Util.getCode(res, name))).handle(res);
	}
}
