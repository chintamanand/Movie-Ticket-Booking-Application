<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
        <title>Your Transcations</title>   
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
                   <br/>
                 <center><p>Your Transcation</p></center>
                     <table cellpadding="25" width="587" border="5">
                         <tr>
              <td width="200" height="40"><div align="center" class="style21"><span class="style23"> ID </span></div></td>
              
              <td width="176"><div align="center" class="style21"><span class="style23">Customer Name </span></div></td>
               <td width="176"><div align="center" class="style21"><span class="style23">Movie Name </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Movies Watched</span></div></td>
  
             <td width="176"><div align="center" class="style21"><span class="style23">Total Ticket Cost </span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">Payment Mode </span></div></td>
            
               <td width="176"><div align="center" class="style21"><span class="style23">mobile Number </span></div></td>
                         <%
                      String name1=(String)application.getAttribute("custname");
                         
                         //String name1="ramesh";
                     String a="",b="",c="",d="",e1="";
                     int i1,k,z;
                     try{
                           String query="SELECT * from custtranscation where custname='"+name1+"' ";
                           Statement st=connection.createStatement();
                           ResultSet rs = st.executeQuery(query);
                           while(rs.next()==true){
                            i1=rs.getInt(1);
                            a=rs.getString(2);
                            k=rs.getInt(3);
                            z=rs.getInt(5);
                            c=rs.getString(6);
                            d=rs.getString(7);
                            e1=rs.getString(8);
                       %>
                         </tr>
                         <tr>
                             <td><div align="center"><%=i1%></div></td>
               <td><div align="center"><%=a%></div></td>
               <td><div align="center"><%=d%></div></td> 
               <td><div align="center"><%=k%></div></td>
              
                <td><div align="center"><%=z%></div></td> 
                 <td><div align="center"><%=c%></div></td>  
               
                 
                 <td><div align="center"><%=e1%></div></td>  
                          <%
			 
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                   </tr> 
                     </table>
                     </td> </tr>
                </table></td></tr></table>      
</body>
</html>