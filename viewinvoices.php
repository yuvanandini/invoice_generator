<?php
require_once('bhavidb.php');

// Handle delete request
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['delete_id'])) {
    $deleteId = $_POST['delete_id'];

    // Perform the delete operation, modify the query based on your table structure
    $deleteSql = "DELETE FROM invoice WHERE Invoice_no = $deleteId";
    if ($conn->query($deleteSql) === TRUE) {
        // Record deleted successfully
        header("Location: viewinvoices.php"); // Redirect to the same page after deletion
        exit(); // Add exit() to stop script execution
    } else {
        // Error deleting record
        echo "Error: " . $conn->error;
    }
}

// Fetch data from the database
$sql = "SELECT * FROM invoice";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BHAVIINVOICE</title>

   <!-- BOOTSTRAP PLUGIN -->

   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

   
<!-- jQuery -->

    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    
    <script src="https://code.jquery.com/ui/1.13.0-rc.3/jquery-ui.min.js" integrity="sha256-R6eRO29lbCyPGfninb/kjIXeRjMOqY3VWPVk6gMhREk=" crossorigin="anonymous"></script>

<!-- ADDING STYLE SHEET  -->

   <link rel="stylesheet" href="img/style.css">
   

</head>
<body>

    <!--  LARGE SCREEN NAVBAR  --> 

    <header> 

      <nav class="navbar navbar-expand-lg navbar-light bg-light d-none d-lg-block">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="img/Bhavi-Logo-2.png" alt="" height="50%" width="50%"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse mr-auto" id="navbarNav">
                <ul class="navbar-nav navbarleft">
                    <li class="nav-item">
                        <a class="nav-link active text-dark pe-5 me-5" aria-current="page" href="invoice.php">CREATE INVOICE</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-primary pe-5" href="viewinvoices.php">VIEW INVOICES</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark ps-5" href="viewcustomers.php">VIEW CUSTOMERS</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- SMALL SCREEN AND MEDIUM SCREEN  NAVBAR -->

    <nav class="navbar navbar-expand-lg navbar-light bg-light d-block d-lg-none ">
      <div class="container-fluid">
        <div class="navbar-header">
          <!-- <a class="navbar-brand" href="#"><img src="img/Bhavi-Logo-2.png" alt="" height="50%" width="50%"></a> -->
          <a class="navbar-brand" href="#">Navbar</a>
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="index.html">CREATE INVOICE</a>

            </li>
            <li class="nav-item">
              <a class="nav-link" href="viewinvoices.html">VIEW INVOICES</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="viewcustomers.html">VIEW CUSTOMERS</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    </header>

    <!-- <div class="container pt-5 mt-5"   > 
        <div class="table-responsive" >
            <table class="table table-bordered viewinvoicetable" >
                <thead>
                    <tr style=" background-color: #f2f2f2;">
                        <th class="text-center"> InVoice No</th>
                        <th> Customer Name </th>
                        <th> Issued Date  </th>
                        <th> Invoice Amount </th>
                        <th> Actions </th>
                    </tr>
                </thead>
                <tbody id="product_tbody  viewinvoicetable">
                    <tr>
                        <td>001</td>
                        <td>Bhavi</td>
                        <td>16/12/2023</td>
                        <td>30000</td>
                        <td> <img src="img/icons8-pencil-24.png" alt="">  <img src="img/icons8-view-24.png" alt="">  <img src="img/icons8-delete-24.png" alt=""></td>
                    </tr>
                </tbody>
            </table> 
            </div>
    </div> -->
    
</body>
</html>



<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Include your head content here -->

</head>
<body>

    <!-- Include your header content here -->

    <div class="container pt-5 mt-5">
        <div class="table-responsive">
            <table class="table table-bordered viewinvoicetable">
                <thead>
                    <tr style="background-color: #f2f2f2;">
                        <th class="text-center">Invoice No</th>
                        <th>Customer Name</th>
                        <th>Issued Date</th>
                        <th>Invoice Amount</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody id="product_tbody viewinvoicetable">
                    <?php
                    // Loop through the fetched data and display it in the table
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row['Invoice_no'] . "</td>";
                        echo "<td>" . $row['Cname'] . "</td>";
                        echo "<td>" . $row['Invoice_date'] . "</td>";
                        echo "<td>" . $row['Grandtotal'] . "</td>";
                        echo "<td> 
                                  <form method='POST' onsubmit='return confirm(\"Are you sure you want to delete this record?\");'>
                                      <input type='hidden' name='delete_id' value='" . $row['Invoice_no'] . "'>
                                      <button type='submit' class='btn btn-link'><img src='img/icons8-delete-24.png' alt=''></button>
                                  </form>
                              </td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Include your footer content here -->

</body>
</html>

<?php
// Close the database connection
$conn->close();
?>