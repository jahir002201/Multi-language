<?php
define("GREETING","WEB DEVELOPMENT");
function localScope(){
	echo GREETING;
}
localScope();

echo "<br/>";
function name($name , $age ){
	echo $name . $age;
}
name("Jahir=>",22);
echo "<br/>";
name("jubayer=>",20);
echo "<br/>";
name("Imran=>",20);

echo "<br/>";

function add($one , $two){
	$total = $one + $two;
	return $total;
}
echo add(600000,400000);

echo "<br/>";

?>

<!DOCTYPE html>
<html>
	<head>
		<title>php example.</title>
	</head>
	<body>
		<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
		Name: <input type="text" name="fullname">
		<input type="submit" value="Name Submit">
		</form>
		<?php
		
		if($_SERVER["REQUEST_METHOD"] == "POST"){
			$name = $_POST['fullname'];
			if(empty($name)){
				echo "Please enter your name.";
			}else{
				echo "Enter your nmae: ".$name;
			}
		}
		

		echo "<br/>";

		$subject=array("HTML","CSS","JAVASRCIPT","PHP");
		sort($subject);
		$arraylength = count($subject);
		for($i = 0; $i<$arraylength; $i++){
			echo $subject[$i]."<br/>";
		}


		echo "<br/>";

		$age=array("Zehad"=>"23","Sahel"=>"22","Aziz"=>"32");
		krsort($age);
		foreach($age as $name=>$age){
			echo "key=".$name.", value=".$age."<br/>";
		}
		?>
	</body>
</html>