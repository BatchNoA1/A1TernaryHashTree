<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trust Is Good</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="#"><small> </small>Ternary HashTree</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.jsp"><span><span>Home</span></span></a></li>
          <li class="active"><a href="AdminLog.jsp"><span><span>Admin</span></span></a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="hbg">&nbsp;</div>
  <div align="center">
    <br/>
     	<h3>Admin Login</h3>
       <s:form action="admin" name="adminform">
          
          <s:textfield name="admusr" label="UserName"  ></s:textfield>
          <s:password name="admpass" label="Password"></s:password>
         
          <s:submit value="Submit"></s:submit>
          
       </s:form>
          <font color="red" size="2"><s:actionmessage/></font>
           <font color="red" size="2"><s:actionerror/></font>
      <div class="clr"></div>
      
    </div>
  </div>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

<div class="footer">
		<div class="container">
			
			<div class="clearfix"> </div>
		
				<center>
				<p>� 2019 Ternary HashTree</p>
				</center>
		</div>
	</div>
</body>
</html>
