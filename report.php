<?php
include("Class/function.php");
require('fpdf/fpdf.php');

class PDF extends FPDF
{
    public $s,$cc,$ct,$t;
function Header()
{
    //Page Header
    $this->Image('image/logo.png',150,6,10);
    $this->Ln(5);
    $this->SetFont('Arial','B',10);
    $this->Cell(130);
    $this->Cell(30,10,'Department of Information and Communication Engineering (ICE)',0,0,'C');
    $this->Ln(5);
    $this->Cell(130);
    $this->Cell(30,10,'Pabna University of Science and Technology',0,0,'C');
    $this->Ln(5);
    $this->Cell(130);
    $this->Cell(30,10,'Session : '.$this->s,0,0,'C');
    $this->Ln(5);
    $this->Cell(30,10,'Course code : '.$this->cc,0,0,'L');
    $this->Cell(215);
    $this->Cell(30,10,'Course Title: '.$this->ct,0,0,'R');
    $this->Ln(5);
    $this->Cell(130);
    $this->Cell(30,10,'Attendance Sheet',0,0,'C');
    $this->Ln(10);

    // Table Header
    $this->Cell(20,5.7,"Roll",1,0,'C');
    $this->Cell(40,5.7,"Name",1,0,'C');
    $N = count($this->t);
    for ($i = 11; $i < $N; $i++){
        $this->Cell(10,5.7,substr($this->t[$i], 0, 5),1,0,'C');
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
        $this->Cell(20,5,$row['Roll'],1,0,'C');
        $this->Cell(40,5,$row['Name'],1,0,'C');
        for($i = 11;$i<$N;$i++){
            $this->Cell(10,5,$row[$header[$i]],1,0,'C');
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

$obj = new DBHelper();
$ct = $obj->getCourseTitle($coursecode);
$result = $obj->viewTable($tbl_name);
$tbl = $obj->viewTableName($tbl_name);

$tbl_info = array();
while($ro = mysqli_fetch_assoc($tbl)){
    $tbl_info[] = $ro['cl_mn'];
}
$std_info = array();
while($row = mysqli_fetch_assoc($result)){
    $std_info[] = $row;
}

$pdf = new PDF();

$pdf->s = $session;
$pdf->cc = $coursecode;
$pdf->ct = $ct['ct'];
$pdf->t = $tbl_info;

$pdf->AliasNbPages();
$pdf->AddPage('L','A4');
$pdf->SetFont('Times','',12);

$pdf->BasicTable($tbl_info,$std_info);
$pdf->Output('D',$coursecode.'-'.$session.'-'.'attendance'.'.pdf');
?>