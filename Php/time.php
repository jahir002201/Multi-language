<!DOCTYPE html>
<html>
<head>
 <title>পিএইচপি উদাহরণ</title>
</head>
<body>

<?php
echo "আজকের তারিখ হলো " . date("d/m/Y") . "<br>";
echo "আজকের তারিখ হলো " . date("d.m.Y") . "<br>";
echo "আজকের তারিখ হলো " . date("d-m-Y") . "<br>";
echo "আজকের তারিখ হলো " . date("l");
?>
<?php
echo "<br/><br/>";
  echo "বর্তমান সময় হলো " . date("h:i:sa");
?>
<?php 
echo "<br/><br/>";
echo date("Y");
?>
<?php
echo "<br/><br/>";
 date_default_timezone_set("Asia/Dhaka");
 echo "এখন সময় " . date("h:i:sa");
?>
<?php
echo "<br/><br/>";
 $dayay = mktime(11, 14, 54, 8, 12, 2014);
 echo "তৈরিকৃত তারিখটি হলো ". date("Y-m-d h:i:sa", $dayay);
?>
<?php
echo "<br/><br/>";
 $day = strtotime("10:30pm April 15 2014");
 echo "তৈরিকৃত তারিখটি হলো " . date("Y-m-d h:i:sa", $day);
?>
<?php
echo "<br/><br/>";
$day=strtotime("tomorrow");
echo date("Y-m-d h:i:sa", $day) . "<br>";

$day=strtotime("next Saturday");
echo date("Y-m-d h:i:sa", $day) . "<br>";

$day=strtotime("+3 Months");
echo date("Y-m-d h:i:sa", $day) . "<br>";
?>
<?php
echo "<br/><br/>";
$daystart = strtotime("Friday");
$dayend = strtotime("+6 weeks", $daystart);

while ($daystart < $dayend) {
  echo date("M d", $daystart) . "<br>";
  $daystart = strtotime("+1 week", $daystart);
}
?>
<?php
echo "<br/><br/>";
 $targetDay = strtotime("November 06");
 $distanceDay = ceil(($targetDay-time())/60/60/24);
 echo " ৪ই নভম্বর  হতে এখনো " . $distanceDay ." দিন বাকি আছে।";
?>
<?php
  echo "<br/><br/>";
  echo readfile("jahir.txt");
?>
</body>
</html>