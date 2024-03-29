package com.online.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Oper
 */
@WebServlet("/Oper")
public class Oper extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Oper() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String input = request.getParameter("input");
		String[] arTemp = null;
		String opers = "+-*/";
		int temp = 0, result = 0;
		
		PrintWriter out = response.getWriter();
		
		for (int i = 0; i < opers.length(); i++) {
			for (int j = 0; j < input.length(); j++) {
				if(opers.charAt(i) == input.charAt(j)) {
					temp = i;
				}
			}
		}
		// 0번째 index : 첫번째 정수
		// 1번째 index : 두번째 정수
		arTemp = input.split("\\" + opers.charAt(temp));
	
		switch(temp) {
		case 0:
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
