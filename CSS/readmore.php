<!DOCTYPE html>
<html>
	<head>
		<title>read more</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script>
			$(document).ready(function(){
				$("#hide").click(function(){
					$("p").hide();
				});
				$("#show").click(function(){
					$("p").show();
				});
			});
		</script>
	</head>
	<body>
		<p>text hide</p>
		<button id="hide">hide</button>
		<button id="show">show</button>
	</body>
</html>