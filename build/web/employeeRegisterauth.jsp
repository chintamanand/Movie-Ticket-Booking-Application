<title>Employee Registration Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%

	String empname = request.getParameter("userid");
	String pass = request.getParameter("pass");
        String mobile=request.getParameter("pass12");
        String age=request.getParameter("s1");
        String gender=request.getParameter("s2");
        String email=request.getParameter("d2");
	try {
                String sql="SELECT * FROM employee where empname='" + empname+ "'";
		
                //CreateStatement is used to decide the Properties for the resultset with 2 arguments
                //1) connection.createStatement(ResultSet.TYPE_FORWARD_ONLY) --BYdefault so,that the Cursor only moves forward in Resultset data
                //2) ResultSet.CONCUR_READ_ONLY	Creates a read-only result set. This is the default
                //Statement stmt = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()==true)
		{ 
                    int id=0; 
                if(rs.last()){ 
                id =rs.getInt(1)+1; 
                } 
                String sql1="insert into employeelogin(id,password,empname,mobile,age,gender,email) values('"+id+"','"+pass+"','"+empname+"','"+mobile+"','"+age+"','"+gender+"','"+email+"')";
                       stmt.executeUpdate(sql1);
                %>
         
                 <pre>Employee Successfully Registered</pre>
                <p><a href="employeelogin.jsp">Back</a><br /> 
<%
		}
		 else 
		{

			response.sendRedirect("Invalidemployeeregistertaion.jsp");
		}

	} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>

