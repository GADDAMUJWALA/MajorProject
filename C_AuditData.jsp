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
.style21 {font-size: 14px}
.style24 {color: #FF0000}
.style25 {
	font-size: 14px;
	color: #FF0000;
	font-weight: bold;
}
.style26 {color: #FF0000; font-weight: bold; }
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
          <h2 class="style26">Audit Data !!! </h2>
            <p class="style26"><em>Shared Files Are Not Audited </em></p>
            <table width="531" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
	
try 
	{		
		
				%>
              <tr>
                <td width="61" height="30" bgcolor="#FFFF00"><div align="center" class="style21 style24"><strong> ID </strong></div></td>
                <td width="111" bgcolor="#FFFF00"><div align="center" class="style25">File Name </div></td>
                <td width="124" bgcolor="#FFFF00"><div align="center" class="style25">Data Owner </div></td>
                <td width="145" bgcolor="#FFFF00"><div align="center" class="style25">Date &amp; Time </div></td>
                <td width="125" bgcolor="#FFFF00"><div align="center" class="style25">View </div></td>
              </tr>
              <%
				
				
				String query="Select *from cloudserver where trapdoor!='Shared' "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(7);
					s6=rs.getString(8);
					s7=rs.getString(10);
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					String dt1 = new String(Base64.decode(s3.getBytes()));
					
					%>
              <tr>
                <td height="28"><div align="center" class="style26"><%=i%></div></td>
                <td><div align="center" class="style26"><a href="C_FileDetails.jsp?fname=<%=s2%>"><%=s2%></a></div></td>
                <td><div align="center" class="style26"><%=s6%></div></td>
                <td><div align="center" class="style26"><%=dt1%></div></td>
                <td><div align="center"><a href="C_AuditData1.jsp?fname=<%=s2%>"><input name="" type="button" value="Audit File .." />
                </a></div></td>
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
