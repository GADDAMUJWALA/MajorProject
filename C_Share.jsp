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
.style33 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style34 {
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
          <h2 class="style34">File Share Status </h2>
          <p class="style34">
            <%
			  
			  	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11,s12,s13;

	try 
	{
		String msg="";
		String id=request.getParameter("usid");
		String quer12="select * from cloudserver where id='"+id+"'";
			Statement st12=connection.createStatement();
			ResultSet rs12=st12.executeQuery(quer12);
			if ( rs12.next() )
			{
				String trap=rs12.getString(4);
				String dup_file=rs12.getString(2);
				String dup_own=rs12.getString(8);
				
				String query11="Select *from cloudserver where trapdoor='"+trap+"' and downer!='"+dup_own+"'"; 
				Statement st11=connection.createStatement();
				ResultSet rs11=st11.executeQuery(query11);
				if ( rs11.next()==true )
				{
					String org_own=rs11.getString(8);
					String org_file=rs11.getString(2);
					
																																				
			String dname=(String)application.getAttribute("doname");
			String task="Shared File";
			String org_f=org_file;
			String dup_f=dup_file;
			
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
			String dt1 = new String(Base64.encode(dt.getBytes()));
			
			String strQuery2 = "insert into transaction(user,fname,task,dt) values('"+dname+"','"+dup_f+"','"+task+"','"+dt+"')";
			Statement st=connection.createStatement();
			st.executeUpdate(strQuery2);
			
			String quer1="select * from cloudserver where fname='"+org_f+"'";
			Statement st1=connection.createStatement();
			ResultSet rs=st1.executeQuery(quer1);
			if ( rs.next() )
			{
					int i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(3);
					s4=rs.getString(4);
					s5=rs.getString(5);
					s6=rs.getString(6);
					//s7=rs.getString(7);
					s8=rs.getString(8);
					s9=rs.getString(9);
					s10=rs.getString(10);
					
					Statement st6=connection.createStatement();
					st6.executeUpdate("delete  from cloudserver where fname='"+dup_f+"' ");

			String org_f1 = new String(Base64.encode(org_f.getBytes()));
					
					st.executeUpdate("insert into  cloudserver(fname,ct,trapdoor,sk,rank,dt,downer,enckey,dupli_check) values ('"+dup_f+"','"+org_f1+"','Shared','"+s5+"','"+s6+"','"+dt1+"','"+dname+"','"+s9+"','Shared')"); 
					
	st.executeUpdate("insert into  shared_files(dupli_file,dupli_file_owner,shared_file,shared_file_owner) values ('"+dup_f+"','"+dname+"','"+org_f+"','"+s8+"')");
					
					
					
					Statement st5=connection.createStatement();
		st5.executeUpdate("insert into deduplication_log (current_file,current_file_owner,present_file,present_file_owner,status) values('"+dup_file+"','"+dup_own+"','"+org_file+"','"+org_own+"','Shared')");
					
					%>
          </p>
          <h3 class="style33">File &quot; <%=dup_f%> &quot; Shared Sucessfully !!</h3>
          <%
					
			}
			}
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
	%>
<p align="right"><a href="C_ViewFiles.jsp">Back</a></p>
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
