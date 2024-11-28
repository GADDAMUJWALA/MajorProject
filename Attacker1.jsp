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
<title>Attacker Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style10 {color: #504b4b}
.style25 {font-size: 14px; color: #712B77; }
.style26 {color: #3e3e3e}
.style27 {font-size: 14px; color: #3e3e3e; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
			<li class="active"><a href="Attacker.jsp">Attacker</a></li>
            <li></li>
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
          <h2><span>Hack Contentes Of The File </span></h2>
            <h2></h2>
            <form id="form1" method="post" action="Attacker2.jsp">
              <label>
              <%	  
			  
			  
	String ss2="",ss3="",ss4="",ss5="",ss7="",decryptedValue="";
	int i=0;
	try 
	{
		String fname=request.getParameter("tt22");
		String query="Select *from cloudserver where fname='"+fname+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		while ( rs.next() )
		{
			i=rs.getInt(1);
			ss2=rs.getString(2);
			ss7=rs.getString(3);
			ss3=rs.getString(4);
			ss4=rs.getString(6);
			ss5=rs.getString(7);
			
			
			
			String keys = "ef50a0ef2c3e3a5f";
				byte[] keyValue1 = keys.getBytes();
				Key key1 = new SecretKeySpec(keyValue1,"AES");
				Cipher c1 = Cipher.getInstance("AES");
				c1.init(Cipher.DECRYPT_MODE, key1);
				decryptedValue = new String(Base64.decode(ss7.getBytes()));
		}	
		if(ss3.equalsIgnoreCase("Shared"))
			{
				%><h2>File Is Shared You Cannot Edit The Content !!</h2><br />
				<p><a href="Attacker.jsp">Back</a></p>
				<%
				
			}
			else
			{
			%>
              <br />
              </label>
              </span>
              </label>
              <table width="568" border="0" align="center">
                <tr>
                  <td width="159" height="28"><div align="center" class="style25 style26">
                      <div align="left"><strong>File Name : </strong></div>
                  </div></td>
                  <td width="393"><input name="fname" type="text" size="48" value="<%=ss2%>" />                  </td>
                </tr>
                <tr>
                  <td height="28"><div align="center" class="style27">
                      <div align="left"><strong>Contents :</strong></div>
                  </div></td>
                  <td><label>
                    <textarea rows="10"  cols="50"  name="cont"><%=decryptedValue%></textarea>
                    </label>                  </td>
                </tr>
              </table>
              <span class="style10">
              <label for="name"><br />
              </label>
              </span>
              <label></label>
              <label>
              <div align="center"><br />
                  <br />
                  <br />
                  <input type="submit" name="Submit" value="Hack File" />
              </div>
              </label>
              <%  
			}
			connection.close();
	}
	
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
	
	%>
            </form>
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
            <li><a href="Attacker.jsp">Home</a></li>
            <li><a href="index.html">Back</a></li>
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
