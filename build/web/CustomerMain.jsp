<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Customer Main Page</title>   
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
				<tr><td><a href="CustomerMain.jsp">Customer</a></td></tr>
                                <tr><td><a href="urTranscationcust.jsp">Transaction History</a></td></tr>
                                <tr><td><a href="UpdateInfo.jsp">Update Information</a></td></tr>
                                 <tr><td><a href="TicketCost.jsp">Ticket Cost</a></td></tr>
                                <tr><td><a href="bookticketmain.jsp">Book Ticket</a></td></tr>
                                <tr><td><a href="printTicket.jsp">Print e-Ticket</a></td></tr>
				<tr><td><a href="movieSchedule3.jsp">Movie Schedule</a></td></tr>
                                <tr><td><a href="CustomerLogin.jsp">Log Out</a></td></tr>
                        </table></td>
                                <td id="databar">
                     <h4><span style="color:white">Customer: </span></h4>
                     <center><p>Your Information</p></center>
                      <table cellpadding="25" width="587" border="5">
                         <tr>
              <td width="200" height="40"><div align="center" class="style21"><span class="style23"> ID </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Customer Name </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Mobile Number</span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Date of Birth </span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">Gender</span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">Pincode</span></div></td>
                    
                     <%
                     String custname=(String)application.getAttribute("custname");
        String  name1=request.getParameter("userid");
                     String a31="",b31="",c31="",d31="",e51="",f61="",g31="",h31="";
	             int i32=0,j3=0,k13=0;
                     try {

		String sql = "SELECT * from customerlogin where custname= '" + custname+ "'";
                
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
                   
		while (rs.next())
		{
                    i32=rs.getInt(1);
                    a31=rs.getString(3);
                    b31=rs.getString(4);
                    c31=rs.getString(5);
                    e51=rs.getString(6);
                    f61=rs.getString(7);
                 %>
                        </tr>  <tr>
               <td><div align="center"><%=i32%></div></td>
               <td><div align="center"><%=a31%></div></td>
               <td><div align="center"><%=b31%></div></td>
               <td><div align="center"><%=c31%></div></td>  
                <td><div align="center"><%=e51%></div></td>  
                 <td><div align="center"><%=f61%></div></td> 
                  <%
	 }}
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                   </tr>    </table>
                     <br/>
                     <center><p>Employees Information</p></center>
                     
                     <table cellpadding="25" width="587" border="5">
                         
            <tr>
             
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
                    
                    a3=rs.getString(2);
                    b3=rs.getString(3);
                    c3=rs.getString(4);
                    e5=rs.getString(5);
                    
                 %>
                        </tr>  <tr>
           
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
             
                     
                 <br/>
                 
                     </td> </tr>
                </table></td></tr></table>      
</body>
</html>