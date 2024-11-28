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
<title>Data Owner </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style21 {font-size: 14px}
.style27 {color: #f3fcff}
.style30 {font-size: 14px;
	color: #6d6d6d;
	font-weight: bold;
}
.style8 {
	color: #6d6d6d;
	font-weight: bold;
}
.style31 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
            <li class="active"><a href="DO_Main.jsp">Data Owner </a></li>
			<li><a href="DO_Login.jsp">Logout</a></li>
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
          <h2 class="style31">Delete Files </h2>
            <p class="infopost">&nbsp;</p>
            <table width="459" border="2" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
String dname=(String)application.getAttribute("doname");
	
try 
	{			
	
	
	%>
              <tr>
                <td width="51" height="30" bgcolor="#FFFF00" class="style27"><div align="center" class="style21 style29 style31"><strong> ID </strong></div></td>
                <td width="106" bgcolor="#FFFF00" class="style27"><div align="center" class="style30 style31">File Name </div></td>
                <td width="184" bgcolor="#FFFF00" class="style27"><div align="center" class="style30 style31">Uploaded Date &amp; Time </div></td>
                <td width="106" bgcolor="#FFFF00" class="style27"><div align="center" class="style30 style31">Delete File </div></td>
              </tr>
              <%
      		String query="Select *from cloudserver where downer='"+dname+"' "; 
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(7);
					s4=rs.getString(9);
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					String dt1 = new String(Base64.decode(s3.getBytes()));
		
						%>
              <tr>
                <td height="28" class="style27"><div align="center" class="style31"><strong><%=i%></strong></div></td>
                <td class="style27"><div align="center" class="style31"><strong><a href="DO_FileDets.jsp?fname=<%=s2%>"><%=s2%></a></strong></div></td>
                <td class="style27"><div align="center" class="style8 style31"><%=dt1%></div></td>
                <td class="style27"><div align="center"><a href="DO_Delete1.jsp?usid=<%=i%>&amp;fname=<%=s2%>">Delete</a></div></td>
              </tr>
              <%
			 		
	  	
		}		
           connection.close();
	  }
	 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%>
            </table>
            <p>&nbsp;</p>
            <p align="right"><a href="DO_Main.jsp">Back</a></p>
            <div class="article"></div>
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
            <li><a href="DO_Main.jsp">Home</a></li>
            <li><a href="DO_Login.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
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
