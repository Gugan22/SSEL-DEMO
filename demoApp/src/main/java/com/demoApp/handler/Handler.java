package com.demoApp.handler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.demoApp.db.db_Util;

public interface Handler {
	Object method() throws IOException;

	default void handle(HttpServletResponse response) throws IOException {
		try (PrintWriter out = response.getWriter()) {
			db_Util.open();
			out.print(method());
		} finally {
			db_Util.close();
		}
	}

	default void handleTxn(HttpServletResponse res) throws IOException {
		try {
			db_Util.openTransaction();
			method();
			db_Util.commitTransaction();
		} catch (Exception e) {
			db_Util.rollback();
		} finally {
			db_Util.close();
		}
	}
}
