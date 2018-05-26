<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Customer Information Update</title>   
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
                               <tr><td><a href="#">Information Update</a></td></tr>
                              <tr><td><a href="CustomerMain.jsp">Back</a></td></tr>
                        </table></td>
                                <td id="databar">
                     <h4><span style="color:white">Update Information: </span></h4>
                     
                     <table cellpadding="25" width="587">
                         <tr><td>
                          <form action="UpdateInfo.jsp" method="post">                 
            <label for="name"><br />
              Enter New Password :<br/><br/>
            </label>
            <input name="userid" type="text" id="name"/>
            
            <label for="name"><br /><br/>
              Mobile Number :<br/><br/>
            </label>
              <input type="text" id="pass1" name="pass1" />
               <br/>
               
               <label for="name"><br /><br/>
              Date of Birth :<br/><br/>
            </label>
              <input type="text" id="pass1" name="pass12" />
               <br/>
                
                <label for="name"><br/>
                Gender:<br/><br/>
                </label>
               <select name="s2">
                    <option value="m">Male</option>
                    <option value="f">Female</option>
                    <option value="Others">Others</option>
                </select>
                <br/>
                
                <label for="name"><br />
                    Pincode :<br/><br/>
                     </label>
                    <input type="text" name="s21" id="d2"/>
               <br/>
                
                <br/>
                <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Update"  />
               <p>&nbsp;</p>
          </form>                                
<%
                 String custname=(String)application.getAttribute("custname");
                 String npass=request.getParameter("userid");
                 String mobile=request.getParameter("pass1");
                 String dob=request.getParameter("pass12");
                 String gender=request.getParameter("s2");
                 String pin=request.getParameter("s21");
                try{
                    
                  String sql1="SELECT * FROM customerlogin where custname='" + custname+ "'";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql1);
                if (rs.next()==true)
		{ 
                 String sql="update customerlogin set password='"+npass+"',mobile='"+mobile+"',dob='"+dob+"',gender='"+gender+"',pin='"+pin+"' where custname='"+custname+"'";
                   stmt.executeUpdate(sql);     
                                 %>
                  
                <p><a href="CustomerMain.jsp">Back</a><br />  </p> 
                
         
          <%
                }
      		connection.close();
          }
         
          catch (Exception e)
	   {
		out.print(e);
		e.printStackTrace();
	   }
			  
			  %>   
               </td></tr>   
                      </table>
                 <br/>
                
                    
                     </td> </tr>
                </table></td></tr></table>
                   
                   
             
</body>
</html>