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
.style25 {color: #3f3f3f;
	font-weight: bold;
}
.style29 {color: #FF0000}
.style30 {color: #FFFFFF}
.style31 {color: #FFFFFF; font-weight: bold; }
.style32 {color: #FF0000; font-weight: bold; }
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
          <h2 class="style29">Authorize Data Owners </h2>
          <p>&nbsp;</p>
          <table width="510" height="311" border="1" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <%
						String doname = request.getParameter("name");
						//int uid = Integer.parseInt(mid);
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from downer where name='"+doname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								//s6=rs.getString(8);
								//s7=rs.getString(9);
								//s8=rs.getString(8);
								
								
								
								
								
					%>
            <tr>
              <td rowspan="8" ><div style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="ownprofileimage.jsp?imgid=<%=i%>" style="width:200px; height:230px;" />
              </div></td>
            </tr>
            <tr>
              <td  width="150" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style25 style30" style="margin-left:20px;">Name:</div></td>
              <td  width="300" valign="middle" height="40" style="color:#000000;"><div align="left" class="style32" style="margin-left:20px;">
                  <%out.println(s1);%>
              </div></td>
            </tr>
            <tr>
              <td  width="120" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style31" style="margin-left:20px;">E-Mail:</div></td>
              <td  width="72" valign="middle" height="40" style="color:#000000;"><div align="left" class="style32" style="margin-left:20px;">
                  <%out.println(s2);%>
              </div></td>
            </tr>
            <tr>
              <td  width="100" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style31" style="margin-left:20px;">Mobile:</div></td>
              <td  width="82" valign="middle" height="40"><div align="left" class="style32" style="margin-left:20px;">
                  <%out.println(s3);%>
              </div></td>
            </tr>
            <tr>
              <td  width="100" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style31" style="margin-left:20px;">Date Of Birth:</div></td>
              <td  width="82" align="left" valign="middle" height="40"><div align="left" class="style32" style="margin-left:20px;">
                  <%out.println(s5);%>
              </div></td>
            </tr>
            <tr>
              <td  width="100" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style31" style="margin-left:20px;">Address:</div></td>
              <td  width="82" align="left" valign="middle" height="40"><div align="left" class="style32" style="margin-left:20px;">
                  <%out.println(s4);%>
              </div></td>
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
            <li><a href="C_AuthoUser.jsp">Authorize End Users </a></li>
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
