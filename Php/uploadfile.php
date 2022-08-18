<?php
$target_directory = "filelocation/";
$target_file = $target_directory . basename($_FILES["fileUpload"]["name"]);
$fileuploadDone = 1;
$fileExtension = pathinfo($target_file,PATHINFO_EXTENSION);

if(isset($_POST["submit"])) {
$check = getimagesize($_FILES["fileUpload"]["tmp_name"]);
if($check !== false) {
echo	"ফাইলটি ইমেজ - " . $check["mime"] . ".";
$fileuploadDone = 1;
} else {
echo "ফাইলটি ইমেজ নয়।";
$fileuploadDone = 0;
}
}

if (file_exists($target_file)) {
echo "দুঃখিত, ফাইলটি পূর্ব থেকেই আপলোড রয়েছে।";
$fileuploadDone = 0;
}

if ($_FILES["fileUpload"]["size"] > 500000) {
echo "দুঃখিত, আপনার ফাইলটি অনেক বড় আকারের।";
$fileuploadDone = 0;
}

if($fileExtension != "jpg" && $fileExtension != "png" && $fileExtension != "jpeg"
&& $fileExtension != "gif" ) {
	echo "দুঃখিত, শুধুমাত্র JPG, JPEG, PNG এবং GIF ফাইল আপলোড করা যাবে।";
$fileuploadDone = 0;
}

if ($fileuploadDone == 0) {
echo "দুঃখিত, আপনার ফাইলটি আপলোড হয়নি।";

} else {
if (move_uploaded_file($_FILES["fileUpload"]["tmp_name"], $target_file)) {
echo " ". basename( $_FILES["fileUpload"]["name"]). " ফাইলটি আপলোড হয়েছে। ";
 } else {
echo "দুঃখিত, আপনার ফাইলটি আপলোডে সমস্যা হচ্ছে।";
 }
}
?> 