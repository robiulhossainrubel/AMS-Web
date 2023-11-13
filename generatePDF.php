<?php
include("Class/function.php");
require('fpdf/fpdf.php');

class PDF extends FPDF
{
function Header()
{
    $this->Image('image/logo.png',100,6,10);
    $this->Ln(5);
    $this->SetFont('Arial','B',10);
    $this->Cell(80);
    $this->Cell(30,10,'Department of Information and Communication Engineering (ICE)',0,0,'C');
    $this->Ln(5);
    $this->Cell(80);
    $this->Cell(30,10,'Pabna University of Science and Technology',0,0,'C');
    $this->Ln(5);
}

function Footer()
{
    // Position at 1.5 cm from bottom
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Page number
    $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}
function custom($session,$coursecode,$ct){
    $this->Cell(80);
    $this->SetFont('Arial','B',10);
    $this->Cell(30,10,'Session : '.$session,0,0,'C');
    $this->Ln(5);
    $this->Cell(30,10,'Course code : '.$coursecode,0,0,'L');
    $this->Cell(120);
    $this->Cell(30,10,'Course Title: '.$ct['ct'],0,0,'R');
    $this->Ln(5);
    $this->Cell(80);
    $this->Cell(30,10,'Continuous Assesment Marks',0,0,'C');
    $this->Ln(10);
}
// Simple table
function BasicTable($header, $data)
{
    $this->SetFont('Arial','',10);
    // Header
    $N = count($header);
    for ($i = 0; $i < $N; $i++){
        $this->Cell(20,7,$header[$i],1,0,'C');
    }
    $this->Ln();
    // Data
    foreach($data as $row)
    {
        for($i = 0;$i<$N;$i++){
            $this->Cell(20,5.7,$row[$header[$i]],1,0,'C');
        }
        $this->Ln();
    }
}
}

$session = '';
$coursecode = '';
if (isset($_GET['session']) and isset($_GET['coursecode'])) {
    $session = $_GET['session'];
    $coursecode = $_GET['coursecode'];
}

$tbl_name = $_COOKIE['department'].$coursecode . $session.$_COOKIE['email'];

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','',12);
$header = array('Roll','CT1','CT2','CT3','Best1','Best2','Percentage','Mark','Total');
$obj = new DBHelper();
$ct = $obj->getCourseTitle($coursecode);
$result = $obj->viewTable($tbl_name);
$std_info = array();
while($row = mysqli_fetch_assoc($result)){
    $std_info[] = $row;
}
$pdf->custom($session,$coursecode,$ct);
$pdf->BasicTable($header,$std_info);
$pdf->Output('D',$coursecode.'-'.$session.'.pdf');
?>