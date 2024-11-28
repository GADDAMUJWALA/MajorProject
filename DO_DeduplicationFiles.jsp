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
.style24 {color: #FF0000}
.style25 {
	font-size: 14px;
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
      <div class="article">
        <div class="article">
          <h2><span>Deduplication Log Details </span></h2>
            <p>&nbsp;</p>
            <table width="813" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
	
try 
	{		
		
				%>
              <tr>
                <td width="56" height="30" bgcolor="#FFFF00"><div align="center" class="style21 style24"><strong> ID </strong></div></td>
                <td width="190" bgcolor="#FFFF00"><div align="center" class="style25">My Duplicate File Name </div></td>
                <td width="216" bgcolor="#FFFF00"><div align="center" class="style25">Original File Owner Name </div></td>
                <td width="164" bgcolor="#FFFF00"><div align="center" class="style25">Original File Name </div></td>
                <td width="175" bgcolor="#FFFF00"><div align="center" class="style25"> Status </div></td>
              </tr>
              <%
				String dname=(String)application.getAttribute("doname");
				
				String query="Select *from deduplication_log where current_file_owner='"+dname+"' "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(3);
					s4=rs.getString(4);
					s5=rs.getString(5);
					s6=rs.getString(6);
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					//String dt1 = new String(Base64.decode(.getBytes()));
					
					%>
              <tr>
                <td height="28"><div align="center"><%=i%></div></td>
                <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s5%></div></td>
                <td><div align="center"><%=s4%></div></td>
                <td><table width="165" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <th scope="row"><div align="center">Shared<!--<form id="form1" name="form1" method="post" action="DO_Delete_dupli.jsp?fname=">
                      <label>
                      <input type="submit" name="Submit2" value="Delete" />
                      </label>
                    </form></div></th>
                    <td><div align="center"><form id="form1" name="form1" method="post" action="DO_Share_dupli.jsp?dup_f=&amp;org_f=">
                      <label>
                      <input type="submit" name="Submit" value="Share" />
                      </label>
                    </form>--></div></td>
                  </tr>
                </table></td>
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
            <table width="805" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <th scope="row"><div align="right"><a href="DO_Main.jsp">Back</a></div></th>
              </tr>
            </table>
            <p>&nbsp;</p>
          <div class="article"></div>
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
