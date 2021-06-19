<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.logic.MerkleTreeTest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.db.DbStatement"%>
<%@page import="com.logic.RootPojo"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <link rel="stylesheet" href="css/Treant.css" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Inconsolata" rel="stylesheet">
  <script src="vendor/raphael.js" type="text/javascript"></script>
    <script src="js/Treant.js" type="text/javascript"></script>
    <script src="js/tree-construct.js" type="text/javascript"></script>
    <script src="js/merkle-tree.js" type="text/javascript"></script>
     <script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<title>Ternary HashTree</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/sha1.min.js"></script>
<script type="text/javascript" src="js/underscore-min.js"></script>
<script src="jquery/jquery.min.js"></script>

<script type="text/javascript">

$(document).ready(function() 
{						
		$("#loginmodal").hide();
});
</script>
<script>
function upload(val)
{
	 if(val=="")
	 {
		 alert('Choose file and then click Distribute button');
		 document.uploadFrm.action="Upload.jsp";	 
		 document.uploadFrm.submit();
	 }
	 else
	 {
		 document.uploadFrm.action="fileUpload";	 
		 document.uploadFrm.submit();
		 $("#loginmodal").fadeIn(700);	
	 }
}
function callDownl()
{
	$("#downloadready").hide();
	$("#downloadrecover").hide();
	$("#filecorrupt").hide();	
}
</script>
<script>
function selectRad(val)
{
	if(val=="Download")
	{
		document.selectFrm.action="downloadFile";	 
		document.selectFrm.submit();
	}
	else if(val=="Delete")
	{
		document.selectFrm.action="delete";	 
		document.selectFrm.submit();
	}
}
</script>
</head>
<body>
 <%String test = ""; 
 String ss="";
 String fName="";
 String root = "";%>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="#"><small> </small>Ternary HashTree</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.jsp"><span><span>Home</span></span></a></li>
          <li><a href="FileSystem.jsp"><span><span>FATFS</span></span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div id="loginmodal">
	    	<h3><font color="#4799dc">Uploading...</font></h3>
			<center><img src="images/loading.gif"></center>
	</div>
    </div>
  </div>
  <div class="hbg">&nbsp;</div>
  <div class="content">
    <div class="content_resize">
     <div class="mainbar">
      <div class="article">
      <br/>
     	 Welcome <font color="brown" size="2">${sessionScope.usrname}</font>
     	<h3><b>File Upload</b></h3>
     	<p style="color: blue">Supported File Formats: JPG, PNG, GIF, TXT, DOC, PDF, AVI, MP4</p>
     	<p>Please choose file:</p>
     	<s:form name="uploadFrm" enctype="multipart/form-data" theme="simple">
     	     <div style="margin:10px;">
			<s:file name="uploadDoc" id="uploadDoc"/>	
			</div><div style="margin:10px;">	
			<s:submit value="Distribute to Cloud Storage" align="left" onclick="upload(uploadDoc.value)"/>
			</div>
			
	 	</s:form>
	 	<button onclick="myFunction()" style="margin:10px;">Build Ternary HashTree</button>
	 	
	 	<s:if test="%{uploadMsg==null}"></s:if>
	 	<s:else>
	 	<center><font color="red"><s:property value="uploadMsg"/></font></center>
	 	</s:else>
	 	
		 <s:if test="%{filelist==null}"></s:if>
		 <s:else>
		
		<table id="fileuploadlist" border="1" width="710px;" >
						<tr><th colspan="4">File Upload Info</th></tr>
					    <tr>	
						<th>Server</th>
						<th>File Name</th>
						<th>Block No</th>
						<th>Signature</th>	
						</tr>
						<s:iterator value="filelist">
						<tr>
							
							<td><s:property value="serverLoc"/></td>
							<td><s:property value="fileName"/></td>
							<td><s:property value="blockNo"/></td>
							<td><s:property value="blockSign"/></td>
							
							
							
							
						</tr>
					</s:iterator>
					
		</table>
		<% 
					HttpSession session1=request.getSession(true);
					test=(String)session1.getAttribute("test");
				fName=(String)session1.getAttribute("fname");
					test = test.substring(0, test.length() - 1);
					String[]t = test.split("@");
					List<String> li = new ArrayList<String>();
					for(String listdata:t){
						li.add(listdata);
					}
					 MerkleTreeTest merkleTrees = new MerkleTreeTest(li);
					 merkleTrees.merkle_tree();
					 root=merkleTrees.getRoot();
					 //out.print("root : " + merkleTrees.getRoot());
					System.out.println("========test========>"+test);
					
					
					%>
		</s:else>
								<% 
								DbStatement databaseStatment=new DbStatement(); 
								PreparedStatement preparedStatement=null;
								preparedStatement=(PreparedStatement)databaseStatment.getConnection().prepareStatement(databaseStatment.RootHash());		
								preparedStatement.setString(1,fName);		
								preparedStatement.setString(2,root);
							
								
								
							    preparedStatement.executeUpdate();
							  
								String status="success";
								
								%>
								
		<br/>
     	<s:if test="%{fileredistributelist==null}"></s:if>
		<s:else>
		<table id="filelist1" border="1" width="710px;" >
						<tr><th colspan="4">ReDistribution of File Info</th></tr>
					    <tr>	
						<th>Server</th>
						<th>File Name</th>
						<th>Block No</th>
						<th>Signature</th>	
						</tr>
						<s:iterator value="fileredistributelist">
						<tr>
							
							<td><s:property value="serverLoc"/></td>
							<td><s:property value="fileName"/></td>
							<td><s:property value="blockNo"/></td>
							<td><s:property value="blockSign"/></td>
							
						</tr>
					</s:iterator>
					
		</table>
		<% 
					HttpSession session1=request.getSession(true);
					test=(String)session1.getAttribute("test");
					
				
					test = test.substring(0, test.length() - 1);
					
					 System.out.println("================>"+test);
					%>
		</s:else>
      
        </div>
    </div>
    <div class="sidebar">
        <div class="gadget">
        <br/>
             <a href="index.jsp" style="float:right;"><font color="black" size="2">LogOut</font></a>
         <br/>
         <h3><b>File Download</b></h3>
         <a href="download" onclick="redisHide()">Access Data</a>
         <s:if test="%{downfilelist==null}">        
         </s:if>
         <s:else>
          	 <s:form name="selectFrm" action="choose">
              	<s:select list="%{downfilelist}" name="flistName" label="File List" cssStyle="width:150px;"></s:select>              
              	<s:hidden name="userName" value="%{#session['usrname']}"></s:hidden>
              	<div style="margin:10px;">
      	 	 	<s:select list="{'Delete','Download'}" id="selecAction" name="selecAction" label="Action" cssStyle="width:150px;"></s:select>
      	 	 	</div>  
      	 	 	          
      	 	 	<s:submit value="Submit"></s:submit>
      	 	 	
      	 <s:if test="%{msg==null}"></s:if>
      	 <s:elseif test="%{msg=='download'}">
      	 	<a href="downloadUsrFile" id="downloadready" onclick="callDownl()"><font color="green">File is ready to download</font></a>
      	 </s:elseif>
      	 
      	  <s:elseif test="%{msg=='fail'}">
      	  <s:url var="test" action="corrupt">
  			<s:param name="userName">${sessionScope.usrname}</s:param>
  			<s:param name="fileName"><s:property value="flistName"/></s:param>
			</s:url>
			<a href="${test}"><font color="red" id="filecorrupt" onclick="callDownl()">File is corrupted.Inform to Verifier</font></a>
      	  </s:elseif>
      	 
      	  <s:if test="%{recMsg==null}"></s:if>
      	  <s:elseif test="%{recMsg=='recover'}">
      	  	<a href="downloadUsrFile" id="downloadrecover" onclick="callDownl()"><font color="green">File is recovered.Click to Download</font></a>
      	  </s:elseif>
      	  <s:elseif test="%{recMsg=='fail'}">
      	  </s:elseif>
      	  
      	  </s:form>
      	 </s:else>
      
			<font color="red" size="2"><s:actionmessage/></font>
          <div class="clr"></div>
         
        </div>
       </div>
       <div class='tree-container'>
    <div id="merkle-tree" style="width:100%; height: 660px">
    
    </div>
  </div>
  </div>

      <div class="clr"></div>
    </div>
  </div>
   <br/>
    <br/>
     
    <script>
  function myFunction() {
	  
  var list ="<%=test%>";
  var list1 ="<%=root%>";
   
  var test =list.split("@");
  console.log(list1);
  var nodeList = convertToNodeList(test);
  var nodeTreeStructure = constructTree(nodeList)[0].toString();
  var chart_config = {
    	chart: {
    		container: "#merkle-tree",
        connectors: {
          "type":"step",
          "style": {
            "stroke-width": 2
          }
        }
    	},
    	nodeStructure: nodeTreeStructure
  };
  new Treant( chart_config );

}
</script>

 
  <div class="footer">
			
			<div class="clearfix"> </div>
		
				<center>
				<p>© 2019 Ternary HashTree</p>
				</center>
		</div>
</body>
</html>