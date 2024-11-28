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
.style28 {font-size: 18px}
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
          <h2><span>Hack Status </span></h2>
            <h2></h2>
            <%
			  
try {
		
      		String cont=request.getParameter("cont");
			String file=request.getParameter("fname");
			String namefile=request.getRealPath("file");


			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
				
      		String keys = "ef50a0ef2c3e3a5f";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
				
				PrintStream p = new PrintStream(new FileOutputStream(namefile+"/"));
			p.print(new String(cont));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(namefile+"/");
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			String h1 = bi1.toString(16);
				
				Statement st=connection.createStatement();
				
				
								String att="Attacked";
st.executeUpdate("update cloudserver set ct='"+encryptedValue+"' ,trapdoor='"+h1+"'  where fname='"+file+"'");

st.executeUpdate("insert into attacker (user,fname,sk,dt,attacktype) values('Attacker','"+file+"','"+h1+"','"+dt+"','Content Attack')");

			%>
            <p></p>
            <h2 class="style28">Data Edited  !</h2>
            </p>
            <a href="Attacker.jsp">Back</a><br />
            <%
      		
			connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  

			  
			  %>
            </tr>
            </table>
            <span class="style10">
            <label for="name"></label>
            </span>
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
