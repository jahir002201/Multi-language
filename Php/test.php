<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>php examlpe</title>
	<style media="screen">
		.error{
			color: red;
		}
	</style>
</head>
<body>
	<?php
    $name = $email = $gender = $messege = "";
	$nameError = $emailError = $genderError = "";
	$nameOutput = $emailOutput = $genderOutput = $messegeOutput = "";
	if($_SERVER["REQUEST_METHOD"] == "POST"){
      if(empty($_POST["name"])){
		$nameError = "please Enter your Name ";
	  }else{
		$name = verify_input($_POST["name"]);
		if(!preg_match("/^[a-zA-Z ]*$/",$name)){
			$nameError = "Only letters and white space use";
		}
	  }
	  if(empty($_POST["email"])){
		$emailError = "Enter your Email";
	  }else{
		$email = verify_input($_POST["email"]);
		if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
			$emailError = "your email invalidate";
		}
	  }
	  if(empty($_POST["gender"])){
		$genderError = "Enter your gender";
	  }else{
		$gender = verify_input($_POST["gender"]);
	  }
	  if(empty($_POST["messege"])){
		$messege = "";
	  }else{
		$messege = verify_input($_POST["messege"]);
	  }
	  if($nameError == "" && $emailError == ""){
		$nameOutput = $name;
		$emailOutput = $email;
		$genderOutput = $gender;
		$messegeOutput = $messege;
	  }
	}
	function verify_input($data){
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}
	?>

	<h2>php form validation example</h2>
	<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    Nmae: <input type="text" name="name" value="<?php echo $name; ?>"><span class="error">*<?php echo $nameError;?></span>
	<br/><br/>
	Email: <input type="text" name="email" value="<?php echo $email;?>"><span class="error">*<?php echo $emailError;?></span>
	<br/><br/>
	Gender: <input type="radio" name="gender"
	<?php if(isset($gender) && $gender == "male")
	echo "checked";?> value="male"
	>male
	<input type="radio" name="gender"
	<?php if(isset($gender) && $gender == "female")
	echo "checked";?> value="female"
	>Female<span class="error">*<?php echo $genderError; ?></span><br/><br/>
	Messege: <textarea name="messege" rows="5" cols="40">
		<?php echo $messege; ?>
	</textarea><br/><br/>
	<input type="submit" name="submit" value="Submit">
	</form>
	<?php 
	echo "<h2>Your Input Data</h2>";
	echo $nameOutput."<br/>";
	echo $emailOutput."<br/>";
	echo $genderOutput."<br/>";
	echo $messegeOutput."<br/>";
	?>
</body>
</html>