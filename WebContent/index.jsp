<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      
	
	</head>
	<link rel="stylesheet" type="text/css" href="main.css">
<body>
	
		<button class="button">click</button>
	<div class="menu">
		
		<form action="server">
			<input class="category" type="submit" value="food">
		</form>
		<form action="server">
			<input class="category" type="submit" value="superfood">
		</form>
		
	</div>
	<div class="menuUnder">
		
	</div>
	<div class="wrapper">
		<div class="grid">
		
			
			
			<div class="header">
	
			</div>
			
			<div class="content">
	
			</div>
			
		</div>
	</div>
	

	
	<script>
	
	/*$("button").click(function(){
		  $.get("server", function(data){
		    alert("Data: " + data);
		    
		    
		  });
	});*/
	
	
	
	$("button").click(function(){
		  $.post("server",
		  {
		    name: "testing",
		    city: "Duckburg"
		  },
		  function(data){
		    alert("Data: " + data);
		  });
		});
	
	
	
	</script>
	
	
</body>
</html>