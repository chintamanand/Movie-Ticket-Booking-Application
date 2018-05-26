<title>Customer Registration Process</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%

	String customername = request.getParameter("userid");
	String password = request.getParameter("userid1");
        String mobilenumber = request.getParameter("pass1");
        String dob=request.getParameter("pass2");
        String gender = request.getParameter("gender");
        String pincode=request.getParameter("s2");
       
        
	try {
            String sql = "SELECT * FROM customerlogin";
              Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql); 
                int id=0; 
                if(rs.last()){ 
                id =rs.getInt(1)+1; 
                } 
                
                String sql1 = "insert into customerlogin(id,password,custname,mobile,dob,gender,pin) values('"+id+"','"+password+"','"+customername+"','"+mobilenumber+"','"+dob+"','"+gender+"','"+pincode+"')";
				//st.executeUpdate(strQuery2);
		stmt.executeUpdate(sql1);
                %>
         
                 <pre>Customer Registered Successfully</pre>
                <p><a href="CustomerLogin.jsp">Back</a><br />
<%
	} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>

