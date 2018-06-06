<title>Employee Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%

	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");
       application.setAttribute("name", name);
	try {

		String sql = "SELECT * FROM employeelogin where empname='" + name+ "' and password='" + pass + "' ";
                //CreateStatement is used to decide the Properties for the resultset with 2 arguments
                //1) connection.createStatement(ResultSet.TYPE_FORWARD_ONLY) --BYdefault so,that the Cursor only moves forward in Resultset data
                //2) ResultSet.CONCUR_READ_ONLY	Creates a read-only result set. This is the default
                //Statement stmt = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()==true)
		{

			response.sendRedirect("employeemain.jsp");

		}
		 else 
		{

			response.sendRedirect("WrongLogin.html");
		}

	} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>

