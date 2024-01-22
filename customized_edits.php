<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BHAVIINVOICE</title>

    <!-- BOOTSTRAP PLUGIN -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- jQuery -->

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/ui/1.13.0-rc.3/jquery-ui.min.js" integrity="sha256-R6eRO29lbCyPGfninb/kjIXeRjMOqY3VWPVk6gMhREk=" crossorigin="anonymous"></script>

    <!-- ADDING STYLE SHEET  -->
    <link rel="stylesheet" href="img/style.css">



    <style>
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 182px;
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
            z-index: 3;
            /* margin-top: 8px; */
        }

        .dropdown-content a {
            color: black;
            padding: 12 px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .navbar-nav li:hover .dropdown-content {
            display: block;

        }

        .table-container {
            position: relative;
        }

        .table-head {
            position: sticky;
            top: 0;
            background-color: #fff;
            z-index: 1;
        }


        .sidebar {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            padding: 58px 0 0;
            /* Height of navbar */
            box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
            width: 240px;
            z-index: 600;
        }

        .nav-links {
            background-color: aliceblue;
            border-radius: 20px;
        }

        .active-link {
            background-color: blue;
            color: white;
        }
    </style>


</head>

<body>

    <!--  LARGE SCREEN NAVBAR  -->
    <div class="container-fluid">
        <div class="row">
            <section class="col-lg-2">
            <nav id="sidebarMenu" class="  collapse d-lg-block sidebar collapse bg-white">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"><img src="img/Bhavi-Logo-2.png" alt="" height="88px" width="191px"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class=" navbar-collapse  " id="navbarNav">
                            <ul class="navbar-nav " style="margin-left: 10%; text-align: center;">

                            <li class="nav-item ">
                                    <a class="nav-link text-dark nav-links" href="viewcustomers.php">Customers</a>
                                </li>

                                <li class="dropdown nav-item pt-4">
                                    <a class="nav-link text-dark nav-links" href="#">Quotation <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                                            <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                                        </svg></a>
                                    <div class="dropdown-content">
                                        <a class="nav-link text-dark" href="quotation.php">
                                            <h6>Create Quotation</h6>
                                        </a>

                                        <a class="nav-link text-dark" href="viewquotes.php">
                                            <h6>View Quotations</h6>
                                        </a>
                                    </div>
                                </li>

                                <!-- Invoice dropdown -->
                                <li class="dropdown nav-item pt-4">
                                    <a class="nav-link  nav-links text-dark" href="#">Invoice <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                                            <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                                        </svg></a>
                                    <div class="dropdown-content">

                                        <a class="nav-link text-dark" href="createinvoice.php">
                                            <h6>Create Invoice</h6>
                                        </a>
                                        <a class="nav-link text-dark" href="viewinvoices.php">
                                            <h6>View Invoices</h6>
                                        </a>

                                    </div>
                                </li>

                                <!-- <li class="nav-item pe-5">
                            <a class="nav-link text-dark" href="viewinvoices.php">View Invoices</a>
                        </li> -->
                                 <li class="nav-item pt-4">
                                    <a class="nav-link nav-links active-link" href="customized_edits.php">Customized Edits</a>
                                </li>
                               
                                <li class="nav-item pt-4">
                                    <a class="nav-link text-dark nav-links" href="report.php">Reports</a>
                                </li>

                                <li class="nav-item pt-4">
                                    <a class="nav-link text-dark nav-links btn-danger" href="index.php">Sign Out</a>
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
                                    <a class="nav-link" href="customized_edits.php">Customized Edits</a>
                                </li>
                                <li class="dropdown nav-item pe-4">
                                    <a class="nav-link active text-primary" href="#">Invoice <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                                            <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                                        </svg></a>
                                    <div class="dropdown-content">
                                        <a class="nav-link text-dark" href="quotation.php">
                                            <h6>Create Quotation</h6>
                                        </a>
                                        <a class="nav-link text-dark" href="createinvoice.php">
                                            <h6>Create Invoice</h6>
                                        </a>
                                        <a class="nav-link text-dark" href="viewinvoices.php">
                                            <h6>View Invoices</h6>
                                        </a>
                                        <a class="nav-link text-dark" href="viewquotes.php">
                                            <h6>View Quotes</h6>
                                        </a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="viewinvoices.php">VIEW INVOICES</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="viewcustomers.php">VIEW CUSTOMERS</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </section>


            <!-- Modal for Add Service-->
            <section class="col-lg-10">
            <div class="container">
                <div class="row   ">
                    <div class="col-6  mt-3">

                        <div class="text-center ">
                            <div class="container  ">
                                <div class="modal" tabindex="-1" id="modal_service">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">Service Details</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="servicesmodal.php" method="post">
                                                    <div class="form-group">
                                                        <label for="">Service Name</label>
                                                        <input type="text" name="service_name" class="form-control">
                                                    </div>
                                                    <input type="submit" name="submit" id="submit" class="btn btn-success  ">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <p class=""><a href="#" class="btn btn-success" id="add_service">ADD SERVICES</a></p>
                            </div>
                        </div>




                        <div class=" ">
                            <div class="container ">
                                <div class="table-container" style="height: 450px; overflow-y: auto;">
                                    <table class="table table-striped viewinvoicetable" style="width: 100%;">
                                        <thead style="  background-color: #f2f2f2;" class="table-head">
                                            <th style="width: 60px;">SI No</th>
                                            <th class="service_name">Service Name</th>
                                            <!-- Add your other columns here -->
                                            <!-- Example: <th>Column 2</th> ... <th>Column 10</th> -->
                                        </thead>
                                        <tbody>
                                            <?php
                                            require_once('bhavidb.php');

                                            $sql = "SELECT * FROM service_names";
                                            $res = $conn->query($sql);
                                            while ($row = mysqli_fetch_assoc($res)) {
                                                echo "<tr>";
                                                echo "<td>" . $row['si_No'] . "</td>";
                                                echo "<td>" . $row['service_Name'] . "</td>";
                                                // Add data for other columns here
                                                echo "</tr>";
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Table For GST-->

                    <div class="col-6 mt-3">

                        <div class="container  text-center ">
                            <div class="modal" tabindex="-1" id="modal_gst">
                                <div class="modal-dialog modal-dialog-centered modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">GST Details</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="gstmodal.php" method="post">
                                                <div class="form-group">
                                                    <label for="">GST %</label>
                                                    <input type="text" name="gst" class="form-control">
                                                </div>
                                                <input type="submit" name="submit" id="submit" class="btn btn-success mt-5">
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p class=""><a href="#" class="btn btn-success" id="add_gst">ADD GST</a></p>
                        </div>



                        <div class="container add_gst " style="margin-left:120px;">
                            <div class="table-responsive">
                                <table class="table table-stripped viewinvoicetable" style="width: 300px; ">
                                    <thead>
                                        <th style=" width: 60px;">SI No</th>
                                        <th>GST%</th>
                                    </thead>
                                    <tbody>
                                        <?php
                                        require_once('bhavidb.php');

                                        $sql = "SELECT * FROM gst_no";
                                        $res = $conn->query($sql);

                                        if ($res === false) {
                                        } else {
                                            while ($row = mysqli_fetch_assoc($res)) {
                                                echo "<tr>";
                                                echo "<td>" . $row['si_No'] . "</td>";
                                                echo "<td>" . $row['gst'] . "</td>";
                                                echo "</tr>";
                                            }
                                        }
                                        ?>
                                    </tbody>

                                </table>
                            </div>
                        </div>



                    </div>

                </div>
            </div>
            </section>
        </div>
    </div>
    <script defer>
        document.addEventListener('DOMContentLoaded', function() {
            var addServiceModal = new bootstrap.Modal(document.getElementById('modal_service'));

            var addServiceButton = document.getElementById('add_service');
            addServiceButton.addEventListener('click', function() {
                addServiceModal.show();
            });
        });

        document.addEventListener('DOMContentLoaded', function() {
            var addGstModal = new bootstrap.Modal(document.getElementById('modal_gst'));

            var addGstButton = document.getElementById('add_gst');
            addGstButton.addEventListener('click', function() {
                addGstModal.show();
            });
        });
    </script>

</body>

</html>