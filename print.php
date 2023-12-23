<?php
require('fpdf/fpdf.php');
require('bhavidb.php');

class PDF extends FPDF
{
    private $grandTotal = 0;
    private $gst = 0;
    private $gst_total = 0;
    private $words = 0;


    function Header()
    {
        $this->Image("img/logo.png", 82, 6, 42, 23, "png");
        $this->Ln(20);
    }

    function body()
    {
        $server = 'localhost';
        $username = 'root';
        $pass = '';
        $database = 'bhavi_invoice_db';

        $conn = mysqli_connect($server, $username, $pass, $database);
        if (!$conn) {
            echo "Connection failed";
        }

        $sql = "SELECT * FROM invoice
                JOIN service ON invoice.Sid = service.Sid
                WHERE invoice.Sid = 7;";
        $result = mysqli_query($conn, $sql);

        while ($data = mysqli_fetch_assoc($result)) {
            $this->SetFont('Arial', 'B', 15);
            $this->Cell(110, 5, 'INVOICE', 5, 0, 'L');
            $this->Cell(0, 5, 'INVOICE NUMBER', 0, 1, 'L');
            $this->Cell(110, 10, 'Date:  ' . $data['Invoice_date'], 0, 0, 'L');
            $this->Cell(0, 10, 'BHAVI_KKD_2023_' . $data['Invoice_no'], 0, 1, 'L');

            $this->Cell(100, 15, 'Bhavi Creations Pvt. Ltd', 0, 0, 'L');
            $this->Cell(86, 15, $data['Company_name'], 0, 1, 'L');

            $this->SetFont('Arial', '', 10);
            $this->Cell(100, 5, '', 0, 0, 'L');
            $this->Cell(86, 5, $data['Cname'], 0, 1, 'L');
            $text = "Plot no28, H No70, 17-28, RTO Office Rd, opposite to New RTO Office, behind J.N.T.U Engineering College Play Ground, RangaRaoNagar, Kakinada, AndhraPradesh533003";
            $this->SetFont('Arial', '', 10);

            $startX = $this->GetX();
            $startY = $this->GetY();

            $this->MultiCell(80, 5, $text, 0, 'L');

            $this->SetXY($startX + 100, $startY);

            $this->MultiCell(100, 5, $data['Caddress'], 0, 'L');
            $this->SetXY($startX, $startY + 25);
            $this->Cell(100, 5, 'Phone no: 9642343434', 0, 0, 'L');
            $this->Cell(86, 5, $data['Cphone'], 0, 1, 'L');
            $this->Cell(100, 5, 'Email: admin@bhavicreations.com', 0, 0, 'L');
            $this->Cell(86, 5, $data['Cmail'], 0, 1, 'L');
            $this->Cell(100, 5, 'GSTIN 37AAKCB6060HIZB', 0, 0, 'L');
            $this->Cell(86, 5, $data['Cgst'], 0, 1, 'L');

            $this->SetFont('Arial', 'B', 15);
            $this->Cell(0, 15, 'BILLING', 0, 1, 'C');

            $this->SetFont('Arial', 'B', 8);
            $this->Cell(30, 8, 'SERVICES', 1, 0, 'C');
            $this->Cell(50, 8, 'DESCRIPTION', 1, 0, 'C');
            $this->Cell(15, 8, 'Qty', 1, 0, 'C');
            $this->Cell(25, 8, 'PRICE / UNIT', 1, 0, 'C');
            $this->Cell(20, 8, 'TOTAL PRICE', 1, 0, 'C');
            $this->Cell(20, 8, 'DISCOUNT', 1, 0, 'C');
            $this->Cell(20, 8, 'FINAL TOTAL', 1, 1, 'C');

            // Loop through each row and display the details
            do {
                $this->Cell(30, 8, $data['Sname'], 'LR', 0, 'C');
                // $this->Cell(50, 8, $data['Description'], 'LR', 0, 'C');

                $x = $this->GetX();
                $y = $this->GetY();
                $this->Rect($x,$y,50,100);
                $this->MultiCell(50, 8, $data['Description'],  0, 'L');
                $this->SetXY($x+50,$y);
                
                $this->Cell(15, 8, $data['Qty'], 'LR', 0, 'C');
                $this->Cell(25, 8, $data['Price'], 'LR', 0, 'C');
                $this->Cell(20, 8, $data['Totalprice'], 'LR', 0, 'C');
                $this->Cell(20, 8, $data['Discount'], 'LR', 0, 'C');
                $this->Cell(20, 8, $data['Finaltotal'], 'LR', 1, 'C');

                // Add the final total of this row to the grand total
                $this->grandTotal = $data['Final'];
                $this->gst = $data['Gst'];
                $this->gst_total= $data['Gst_total'];
                $this->words = $data['Totalinwords'];
            } while ($data = mysqli_fetch_assoc($result));
        }

        // Display the grand total outside the loop
        $this->Cell(160, 8, 'Grand Total', 1, 0, 'R');
        $this->Cell(20, 8, $this->grandTotal, 1, 1, 'C');
        $this->Cell(140,8,'GST%',1,0,'R');
        $this->Cell(20,8, $this->gst ,1,0,'C');
        $this->Cell(20,8, $this->gst_total, 1, 1, 'C');
        $this->Cell(140,8, $this->words, 1,0,'L');

    }

    function Footer()
    {
        $this->SetY(-15);
        $this->SetFont('Arial', 'B', 10);
        $this->Cell(0, 10, 'Google pay , Phone pay, Paytm 9642343434', 0, 0, 'C');
    }
}

$pdf = new PDF("P", 'mm', 'A4');
$pdf->SetMargins(15, 15, 15);
$pdf->AddPage();
$pdf->body();
$pdf->Output();
?>
