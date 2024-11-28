<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style2 {color: #25C8D7}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
			<li class="active"><a href="C_Login.jsp">Cloud</a></li>
            <li><a href="C_Login.jsp">Logout </a></li>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1>An Efficient Ciphertext Index Retrieval Scheme based on Edge Computing Framework</h1>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style3">Dedupilication  Details !!! </h2>
          <p>&nbsp;</p>
        <h2>
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0,count=0;
String fname=request.getParameter("fname");	
try 
	{
      		String query="Select *from cloudserver where fname='"+fname+"'"; 
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
			if ( rs.next() )
			{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(4);
					s4=rs.getString(8);
					s8=rs.getString(7);
					
					Statement st5=connection.createStatement();
			st5.executeUpdate("update cloudserver set dupli_check='Verified' where fname='"+fname+"'");
		
		String query1="Select *from cloudserver where  trapdoor='"+s3+"' and fname!='"+s2+"' ";//and dupli_check='No'"; 
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query1);
			while ( rs1.next() )
			{
						j=rs1.getInt(1);
					s6=rs1.getString(2);
					s5=rs1.getString(4);
					s7=rs1.getString(8);
			
					
					
					
		String query3="Select *from deduplication_log where current_file='"+fname+"' and current_file_owner='"+s4+"' and present_file='"+s6+"' and present_file_owner='"+s7+"'"; 
            Statement st3=connection.createStatement();
            ResultSet rs3=st3.executeQuery(query3);
			if ( rs3.next() )
			{
					
					%>
              <span class="style3">Dedupilication  Details Already sent to &quot;<%=s7%>&quot; ! <br />
              </span>
              <span class="style3">
              <%
			}
			else
			{
			
			Statement st4=connection.createStatement();
			st4.executeUpdate("insert into  deduplication_log(current_file,current_file_owner,present_file,present_file_owner,trapdoor) values ('"+fname+"','"+s4+"','"+s6+"','"+s7+"','"+s5+"')");
										
%>
            Dedupilication  Details sent Sucessfully to</span> <span class="style2">&quot;<%=s7%>&quot; !</span>
            <%
			
			}

		}
		}
	connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>         
          </h2>
            <p align="right"><a href="C_Main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" />
            </span>
          </form>
          <div class="clr"></div>
        </div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <ul class="sb_menu">
            <li><a href="C_Main.jsp">Home</a></li>
            <li><a href="C_Login.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <ul class="ex_menu"><li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
