<?php
require_once('bhavidb.php');

if (isset($_POST["submit"])) {
    // print_r($_POST);
    // exit;
    $cname = mysqli_real_escape_string($conn, $_POST["cname"]);
    $cphone = mysqli_real_escape_string($conn, $_POST["cphone"]);
    $caddress = mysqli_real_escape_string($conn, $_POST["caddress"]);
    $cemail = mysqli_real_escape_string($conn, $_POST["cemail"]);
    $cgst = mysqli_real_escape_string($conn, $_POST["cgst"]);

    // Insert into customer table
    $sql = "INSERT INTO customer (Name,Phone,Address,Email,Gst_no) VALUES ( '$cname', '$cphone', '$caddress', '$cemail', '$cgst')";
    $result = mysqli_query($conn,$sql);
    if($result){
        echo "<SCRIPT>
        window.alert ('successfully Added')
        window.location.href='viewcustomers.php';
        </SCRIPT>";
    }
    else{
        echo "Added Failed";
    }
}
?>