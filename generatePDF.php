<?php
include("Class/function.php");
require('fpdf/fpdf.php');

class PDF extends FPDF
{
    public $s,$cc,$ct,$t;
function Header()
{
    //Page Header
    $this->Image('image/logo.png',100,6,10);
    $this->Ln(5);
    $this->SetFont('Arial','B',10);
    $this->Cell(80);
    $this->Cell(30,10,'Department of Information and Communication Engineering (ICE)',0,0,'C');
    $this->Ln(5);
    $this->Cell(80);
    $this->Cell(30,10,'Pabna University of Science and Technology',0,0,'C');
    $this->Ln(5);
    $this->Cell(80);
    $this->SetFont('Arial','B',10);
    $this->Cell(30,10,'Session : '.$this->s,0,0,'C');
    $this->Ln(5);
    $this->Cell(30,10,'Course code : '.$this->cc,0,0,'L');
    $this->Cell(120);
    $this->Cell(30,10,'Course Title: '.$this->ct,0,0,'R');
    $this->Ln(5);
    $this->Cell(80);
    $this->Cell(30,10,'Continuous Assesment Marks',0,0,'C');
    $this->Ln(10);
    // Header
    $N = count($this->t);
    for ($i = 0; $i < $N; $i++){
        $this->Cell(20,7,$this->t[$i],1,0,'C');
    }
    $this->Ln();
}

function Footer()
{
    // Position at 1.5 cm from bottom
    $this->SetY(-15);
    $this->SetFont('Arial','I',8);
    $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}
function BasicTable($header, $data)
{
    $N = count($this->t);
    // Data
    foreach($data as $row)
    {
        for($i = 0;$i<$N;$i++){
            $this->Cell(20,5,$row[$header[$i]],1,0,'C');
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

$header = array('Roll','CT1','CT2','CT3','Best1','Best2','Percentage','Mark','Total');
$obj = new DBHelper();
$ct = $obj->getCourseTitle($coursecode);
$result = $obj->viewTable($tbl_name);


$std_info = array();
while($row = mysqli_fetch_assoc($result)){
    $std_info[] = $row;
}


$pdf = new PDF();

$pdf->s = $session;
$pdf->cc = $coursecode;
$pdf->ct = $ct['ct'];
$pdf->t = $header;

$pdf->AliasNbPages();
$pdf->AddPage('P','A4');
$pdf->SetFont('Times','',12);

$pdf->BasicTable($header,$std_info);
$pdf->Output('D',$coursecode.'-'.$session.'-'.'CA-Mark'.'.pdf');
?>