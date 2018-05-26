<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Employee Transcations</title>   
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%--<link href="themes/default/dream.css" rel="stylesheet" type="text/css"/>--%>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/ie6.css" rel="stylesheet" type="text/css" />
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
        <link href="css/dream.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        <!--
        .style1 {font-size: 36px}
        -->
        </style>
    </head>
<div id="header">
<div class="row-1">
<div class="fleft"><a href="index.jsp">Cinema <span style="color:red">World</span></a></div>
          <ul>    
            <li><a href="index.jsp"><img src="images/icon1-act.gif" alt="Home Page" /></a></li>
            <li><a href="contact-us.html"><img src="images/icon2-act.gif" alt="Gmail" /></a></li>
            <li><a href="about-us.html"><img src="images/icon3-act.gif" alt="About-us" /></a></li>
          </ul>
        </div>          
    </div>
        <body id="page1">
<!-- START PAGE SOURCE -->
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-2">
          <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about-us.html">About</a></li>
            <li><a href="articles.html">Articles</a></li>
            <li><a href="contact-us.html">Contacts</a></li>
          </ul>
        </div>
      </div>
         </div>
      </div></div>
<table width="100%">
	<tr><td>
		<table><tr><td  valign="top">
			<table id="navigation"  width="230">
				<tr><td><a href="AdminMain.jsp">Admin</a></td></tr>
                                <tr><td><a href="addemployee.jsp">Add Employee</a></td></tr>
                                <tr><td><a href="employeetranscation1.jsp">Employees Transcation</a></td></tr>
				<tr><td><a href="CustomerTranscation1.jsp">Customers Transcations</a></td></tr>
				<tr><td><a href="movieSchedule1.jsp">Movie Schedule</a></td></tr>
                                <%--<tr><td><a href="#">Movies</a></td></tr>--%>
				 <%--<tr><td><a href="javascript:viewSchedule()">Schedule</a></td></tr>
				<tr><td><a href="javascript:viewTimeslot()">Time Slot</a></td></tr>
				<tr><td><a href="javascript:viewTicket()">Ticket</a></td></tr>--%>
                                <tr><td><a href="adminLogin.jsp">Log Out</a></td></tr>
                        </table></td>
                                <td id="databar">
                                    <h4><span style="color:white">Admin: </span></h4>
                     
                     <center><p>Employees Information</p></center>
                     
                     <table cellpadding="25" width="587" border="5">
                         
            <tr>
              <td width="200" height="40"><div align="center" class="style21"><span class="style23"> ID </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Employee Name </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Mobile Number</span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Age </span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">Email</span></div></td>
            
                    
                     <%
                     String a3="",b3="",c3="",d3="",e5="",f6="",g3="",h3="";
	             int i31=0,j1=0,k12=0;
                     try {

		String sql = "SELECT * from employee";
                
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
                   
		while (rs.next())
		{
                    i31=rs.getInt(1);
                    a3=rs.getString(2);
                    b3=rs.getString(3);
                    c3=rs.getString(4);
                    e5=rs.getString(5);
                    
                 %>
                        </tr>  <tr>
               <td><div align="center"><%=i31%></div></td>
               <td><div align="center"><%=a3%></div></td>
               <td><div align="center"><%=b3%></div></td>
               <td><div align="center"><%=c3%></div></td>  
                <td><div align="center"><%=e5%></div></td>  
                 
                       
                          <%
			 
	  }
          
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                   </tr>    </table>    
                     <br/>
                      <center><p> Employee Transcations</p></center>
                     <table cellpadding="25" width="587" border="5">
                         
            <tr>
              <td width="200" height="40"><div align="center" class="style21"><span class="style23"> ID </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Employee Name </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Mobile Number</span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Age </span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">Email</span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">Number of Seats </span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">New Price </span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">Movie Name </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Screen Number</span></div></td>
                    
                     <%
                     String a="",b="",c="",d="",e1="",f="",g="",h="";
	             int i=0,j=0,k1=0;
                     try {

		String sql = "SELECT * from employeetranscation";
                
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
                   
		while (rs.next())
		{
                    i=rs.getInt(1);
                    a=rs.getString(2);
                    b=rs.getString(3);
                    c=rs.getString(4);
                    e1=rs.getString(5);
                    f=rs.getString(6);
                    j=rs.getInt(7);
                    k1=rs.getInt(10);
                    h=rs.getString(9);
                 %>
                        </tr>  <tr>
               <td><div align="center"><%=i%></div></td>
               <td><div align="center"><%=a%></div></td>
               <td><div align="center"><%=b%></div></td>
               <td><div align="center"><%=c%></div></td>  
                <td><div align="center"><%=e1%></div></td>  
                 <td><div align="center"><%=f%></div></td>  
                 <td><div align="center"><%=j%></div></td>  
                 <td><div align="center"><%=h%></div></td>
                  <td><div align="center"><%=k1%></div></td>
                       
                          <%
			 
	  }
          
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                   </tr>    </table>
                     <br/>
                
           
                 
                     </td> </tr>
                </table></td></tr></table>      
</body>
</html>