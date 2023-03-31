<?php 

require "LeverancierConnect.php";
class Leverancier
{
    //properties
    public $naam;
    public $postcode;
    public $email;
    public $contact;
    public $adres;

    public $woonplaats;

    //constructor
    function __construct($naam = NULL, $postcode = NULL, $contact = NULL, $email = NULL, $adres = NULL, $woonplaats = NULL )
    {

        $this->naam = $naam;
        $this->contact = $contact;
        $this->email = $email;
        $this->adres = $adres;
        $this->postcode = $postcode;
        $this->woonplaats = $woonplaats;
        
    }

    //setters
    function set_email($email)
    {
        $this->email = $email;
    }



    function set_name($naam){
        $this->naam = $naam;
    }

    function set_postcode($postcode){
        $this->postcode = $postcode;
    }

    function set_contact($contact)
    {
        $this->contact = $contact;
    }

    function set_adres($adres)
    {
        $this->adres = $adres;
    }

    function set_woonplaats($woonplaats)
    {
        $this->woonplaats = $woonplaats;
    }

    //getters

    function get_name(){
        return $this->naam;
    }

    function get_postcode(){
        return $this->postcode;
    }

    function get_contact()
    {
        return $this->contact;
    }
    function get_adres()
    {
        return $this->adres;
    }

    function get_woonplaats()
    {
        return $this->woonplaats;
    }

    function get_email()
    {
        return $this->email;
    }






    // functies voor crud

    
    public function afdrukken()
		{
			echo $this->get_name();
			echo "<br/>";
            echo $this->get_email();
			echo "<br/>";
            echo $this->get_contact();
            echo "<br/>";
            echo $this->get_adres();
            echo "<br/>";
            echo $this->get_postcode();
            echo "<br/>";
            echo $this->get_woonplaats();
            echo "<br/>";

		}

    public function createLeverancier(){
        $levid = NULL;
        $naam = $this->get_name();
        $contact = $this->get_contact();
        $email = $this->get_email();
        $adres = $this->get_adres();
        $postcode = $this->get_postcode();
        $woonplaats = $this->get_woonplaats();
        global $conn;

        $sql = $conn->Prepare("INSERT INTO leveranciers VALUES(:levid, :levnaam, :levcontact, :levEmail, :levAdres, :levPostcode, :levWoonplaats)");
        $sql->execute([
            "levid" => $levid,
            "levnaam" => $naam,
            "levcontact" => $contact,
            "levEmail" => $email,
            "levAdres" => $adres,
            "levPostcode" => $postcode,
            "levWoonplaats" => $woonplaats,
        ]);
        echo"de leverancier is toegevoegd";
    }

    public function readLeverancier(){
        global $conn;
        $sql = $conn->Prepare(" SELECT * FROM leveranciers
        
        
        ");

        $sql->execute();
        foreach($sql as $leverancier)
        {
            echo $leverancier ["levid"] . " - ";
            echo $this->naam= $leverancier ["levnaam"]. " - ";
            echo $this->contact= $leverancier ["levcontact"]. " - ";
            echo $this->email= $leverancier ["levEmail"]. " - ";
            echo $this->adres= $leverancier ["levAdres"]. " - ";
            echo $this->postcode= $leverancier ["levPostcode"]. " - ";
            echo $this->woonplaats = $leverancier ["levWoonplaats"]. "<br>";
        }

    }
    public function searchLeverancier($levid){
        require "LeverancierConnect.php";
        $sql = $conn->Prepare("SELECT * FROM leveranciers WHERE levid = :levid  ");
        $sql->bindParam(":levid", $levid);
        $sql->execute();

        foreach($sql as $leverancier){
            echo $leverancier["levid"] . "<br>";
            echo $leverancier["levnaam"] . "<br>";
            $this->naam=$leverancier["levnaam"];
            echo $leverancier["levcontact"] . "<br>";
            $this->contact=$leverancier["levcontact"];
            echo $leverancier["levEmail"] . "<br>";
            $this->email=$leverancier["levEmail"];
            echo $leverancier["levAdres"] . "<br>";
            $this->adres=$leverancier["levAdres"];
            echo $leverancier["levPostcode"] . "<br>";
            $this->postcode=$leverancier["levPostcode"];
            echo $leverancier["levWoonplaats"] . "<br>";
            $this->woonplaats=$leverancier["levWoonplaats"];

        }
    }
    public function deleteLeverancier($levid)
		{
			require "LeverancierConnect.php";
			// statement maken
			$sql = $conn->prepare("
									delete from leveranciers
									where levid = :levid
								 ");
			// variabele in de statement zetten
			$sql->bindParam(":levid", $levid);
			$sql->execute();
		}

        public function updateLeverancier($levid)
		{
			require "LeverancierConnect.php";
			// gegevens uit het object in variabelen zetten 
			$levid;
			$naam 		= $this->get_name();
            $contact    = $this->get_contact();
            $email      = $this->get_email();
            $adres      = $this->get_adres();
            $postcode 	= $this->get_postcode();
            $woonplaats = $this->get_woonplaats();

			// statement maken
			$sql = $conn->prepare("
									update leveranciers
									set levnaam=:levnaam, levcontact=:levcontact, levEmail=:levemail, levAdres=:levadres , levPostcode=:levpostcode , levWoonplaats=:levwoonplaats 
									where levid=:levid
								 ");
			// variabelen in de statement zetten
			$sql->bindParam(":levid", $levid);
			$sql->bindParam(":levnaam", $naam);
			$sql->bindParam(":levcontact", $contact);
			$sql->bindParam(":levemail", $email);
            $sql->bindParam(":levadres", $adres);
            $sql->bindParam(":levpostcode", $postcode);
            $sql->bindParam(":levwoonplaats", $woonplaats);
			$sql->execute();
		}

}












?>