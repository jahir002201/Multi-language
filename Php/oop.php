<?PHP 
class Greeting{
    public $add=5;
	public $abc=6;
	public function message(){
	echo "Welcome Guest";}

	}
	$greeting = new Greeting();
	$greeting->message();
	echo "</br>";
	echo $greeting->add + $greeting->abc;
	
?>