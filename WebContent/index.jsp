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
		
			<button id="c1"  class="category"  onClick="clicked(this.id)">myFood</button>
			<button id="c2" class="category"  onClick="clicked(this.id)">newFood</button>
		
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
	
	
	
	function clicked(id) {
		var category=$('#'+id).text();
		
		$.post('server', //location of server
		{send:category}, //name:value that is sent to server.
		
		function(data){//the function that returns the data
			$('.content').html(data);
		} 
		
		);
	}
	
	
	
	
	
	</script>
	
	
</body>
</html>