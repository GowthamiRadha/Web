<%@ page import="com.srkr.star.*,java.sql.*"%>

<!DOCTYPE jsp>

<html>

<head><title>Express your doubt</title>

	

	<script type="text/javascript">
	function validate()
	{
	
		alert(" posting is successful");
	
	}
	var observe;
	if (window.attachEvent) {
	    observe = function (element, event, handler) {
	        element.attachEvent('on'+event, handler);
	    };
	}
	else {
	    observe = function (element, event, handler) {
	        element.addEventListener(event, handler, false);
	    };
	}
	function init () {
	    var text = document.getElementById('text');
	    function resize () {
	        text.style.height = 'auto';
	        text.style.height = text.scrollHeight+'px';
	    }
	    /* 0-timeout to get the already changed text */
	    function delayedResize () {
	        window.setTimeout(resize, 0);
	    }
	    observe(text, 'change',  resize);
	    observe(text, 'cut',     delayedResize);
	    observe(text, 'paste',   delayedResize);
	    observe(text, 'drop',    delayedResize);
	    observe(text, 'keydown', delayedResize);

	    text.focus();
	    text.select();
	    resize();
	}
	</script>
	
	<style>
	
	.divtext
	{
		border:ridge 2px;
		padding:5px;
		width:20em;
		min-height:5em;
		overflow:auto;
	}
	
	body
	{
	margin-left:218px;
	margin-right:226px;
	
	}
		
				marquee
				{
					font-size:20px;
					
					margin-top:-5px;
					color:white;
				}

	 			 #blink_me 
	  			{
  					animation: blinker 1s linear infinite;
  					animation-duration: 1s;
				}

				@keyframes blinker 
				{
  			   100% {
    					opacity: 0;
  					}
				}
				.news
				{
				position:absolute;
				font-weight: 900;
   				text-align:center;
    			width: 10%;
    			height:4%;
    			color:white;
    			font-size:20px;
    			margin-top:-7px;
       			margin-bottom:0px;
    			float:left;
   				z-index: +1;
    			background:red;
    			border:none;
			}
					.navbar 
			{
  				overflow: hidden;
  				background-color: #3b5998;
 				
  				
  				width:100.1%;
			}

			.navbar a 	
			{
  				float: left;
  				display: block;
  				color: #f2f2f2;
  				text-align: center;
  				padding: 8px 19px;
  				text-decoration: none;
  				font-size: 18px;
			}

			.navbar a:hover 
			{
  				background: #ddd;
  				color: black;
			}
			.navbar a.active 
			{
    			background-color:black;
			}
			.title
			{
			
				
				margin-top:0px;
				
				margin-bottom:0px;
				
			}
	select
 	{
		color:black;
		font-size:16px;
		text-align:center;
		padding:5px;
		border-radius:10px;
		text-align:center;
		outline:none;
 	}
 	select:hover
 	{
 		cursor:pointer;
 	}
 	
 	textarea {
    border: 0 none white;
    overflow: hidden;
    padding: 0;
    outline: none;
    background-color: #D0D0D0;
}
 	
  	input[type="submit"]
	{
		width:30%;
		margin-left:0px;
		border:none;
		outline:none;
		height:30px;
		background:#fb2525;
		color:#fff;
		font-size:18px;
		border-radius:20px;	
	}
	
  	input[type="submit"]:hover
	{
		cursor:pointer;
		background:#2B3856;
		color:white;
	}
	.border
{
	
	border: ridge 2px;
    	
    width: 100%;
    background:#659EC7;
    overflow: auto;
    margin:0;
		
	
}
.border1
{
	background:	#808080;
	width:13%;
	float:left;
}

.regNo
{
	color:white;
	margin:0px;
	font-size:20px;
	float:left:
}
.date
{
	font-size:16px;
	margin:0px;
	color:green;
	float:left:
}
.doubt
 {
 	outline:none;
 	border:none;
 	width:85%;
 	margin:0;
 	font-size:22px;
 	background:#659EC7;
 	color:white;
 	
 }
 .answer
 {
 	min-height:60px;;
 	width:100%;
 	margin-top:0;
 	border-bottom:none;
 	font-size:20px;
 	background:#D0D0D0;
 	color:white;
 }
	
		
	</style>
	
</head>

<body bgcolor="#728EB2" onload="init();">
<div>
		
		<p class="news"><span id="blink_me">Notifications</span></p>
		<span>	
		<marquee behavior="scroll" scrolldelay="100" scrollamount="3" onmouseover="this.stop();" onmouseout="this.start();">
		Class work for B.Tech 2/4, 3/4 and 4/4 will commence from 11-06-2018</marquee>
		</span>
		</div>
		
		<div  class="title">
		
			<img src="login.png">
		
		</div>
		
 	<div align="center" class="navbar" >
<a href="cse.jsp">Computer Science</a>

<a  href="CseAskDoubt.jsp">Ask a Doubt</a>
 

<a href="CseReplyDoubt1.jsp">Reply to a Doubt</a>


<a href="CseViewDoubt1.jsp">View Doubts</a>

<a href="BranchSelection.jsp">Branch Selection</a>

<a href="Logout.jsp">LogOut</a>

</div>
	
<br>	
	
<%
	String RegNo=(String)session.getAttribute("regNo");
	
%>
	
	
	
	
	
	
	


	<div align="center">
	
	
	<form action="CseAskDoubt.jsp" method="post" name="f">
	
	
	

	
	<select name="subject" required>
	
							<option disabled selected>Select Subject</option>
							<option>English-1</option>
							<option>Mathematics-1</option>
							<option>Mathematics-2</option>
							<option>Engineering Physics</option>
							<option>C-language</option>
							<option>Environmental Studies</option>
							<option>English-2</option>
							<option>Mathematics-3</option>
							<option>Engineering Chemistry</option>
							<option>Object Oriented Programming through C++</option>
							<option>Elements of Electronics Engineering</option>
							<option>Engineering Drawing</option>
							<option>Data Structures</option>
							<option>Elements of Electronic Engineering</option>
							<option>Discrete Mathematical Structures</option>
							<option>Object Oriented Programming</option>
							<option>Digital Logic Design</option>
							<option>Operating System</option>
							<option>Computer Organization</option>
							<option>Microprocessors</option>
							<option>Data Communications</option>
							<option>Advanced Data Structures</option>
							<option>Computer Graphics</option>
						</select>
						
						<br/><br/>
						
	<textarea placeholder="Express your doubt here"  rows="20" style="height:1em;" id="text" cols="100"   name="doubt" required></textarea><br/><br/>
	
	<input type="submit" value="POST" onclick="validate()">
	
						
	
	</form>
	
<% 
	
				String subject=request.getParameter("subject");
				String regNo=(String)session.getAttribute("regNo");
				String doubt=request.getParameter("doubt");
				
				if(subject!=null && regNo!=null && doubt!=null)
				{
	   				if(subject!="" && regNo!="" && doubt!="")
	   				{
						CseAskDoubt d=new CseAskDoubt();
						boolean flag=d.setCseAskDoubt(regNo,subject,doubt);
						
						
	   				}
				}
%>
		
		<br/><br/>
		
	</div>
	
	<div align="center">
	<h4>Questions Asked By u</h4>
	<%
	
	
	
	   String doubt1;
		if(regNo!=null)
		{
		
		try
		{
				JdbcConnection jc=new JdbcConnection();
				Connection con=jc.getConnection();
				
				Statement st =  con.createStatement();
				ResultSet rs=st.executeQuery("select * from cseAskDoubt where regNo='"+regNo+"'");
				
				//Statement st1=con.createStatement();
				//ResultSet rs1=st1.executeQuery("select * from cseReplyDoubt where subject='"+subject+"' && doubt='"+doubt+"'");
				
				while(rs.next() )
				{%>
				<div class="border">
				<div style="width:cover;min-height:60px;background:#659EC7;">
				<div class="border1">
									<p class="regNo"><%= rs.getString(1) %></p>
									<p class="date"><%= rs.getString("askDoubt_date") %></p>
				</div>
									
							<span class="doubt"><%=doubt1=rs.getString("doubt")%>
								
				</span>
				</div>
										
					
	<%	  
			try
						{
						  Statement st1 =  con.createStatement();
						  ResultSet rs1=st1.executeQuery("select * from cseReplyDoubt where doubt='"+doubt1+"'");
						  while(rs1.next())
						  {%>
						<div class="border1">  					
						<p class="regNo"><%= rs1.getString(1) %></p>
						<p class="date"><%= rs1.getString("replyDoubt_date") %></p>
						 </div> 
						<p class="answer"><%=rs1.getString("answer")%></p>
				
	<% 				}
					  }
					  catch(Exception e)
					  {
						  System.out.println(e);
					  }%></div><br><br><br><% 
				}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		}
	 %>
	
	</div>
	
	<script>
		if ( window.history.replaceState ) 
		{
 			 window.history.replaceState( null, null, window.location.href );
		}
	</script>		
</body>
</html>