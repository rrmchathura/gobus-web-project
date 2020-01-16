<?php

include "config.php";

$dloc=$_REQUEST["dLoc"];
$aloc=$_REQUEST["aLoc"];
$date=$_REQUEST["date"];
//AND bus_time.date='$date'

$sql = "SELECT bus.name,bus.busNo
,bus_time.dTime, bus_time.aTime, bus_time.aLoc, bus_time.dLoc, bus_time.aLoc, bus_time.price
FROM `bus_time`,`bus` WHERE bus_time.bus=bus.busNo AND bus_time.dLoc='$dloc' AND bus_time.aLoc='$aloc' ";
$result = $conn->query($sql);
 //echo $sql;
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $name= $row["name"];
        $busNo= $row["busNo"];
        $dTime= $row["dTime"];
        $aTime= $row["aTime"];
        $dLoc= $row["dLoc"];
        $aLoc= $row["aLoc"];
       $price= $row["price"];



        echo "
        
        <div class='row'>
                <div class='row'>
                <div class='col-4 image'>
                  <img src='images/goBus_logo.png'>
                </div>
                <div class='col-4 col-dep'>
                  <div class='departure'>
                    <h3>From:$dLoc</h3>
                    <h4>$date</h4>
                    <h5>$dTime</h5>
                  </div>
                  </div>
                  <div class='col-4 col-arr'>
                      <div class='arrival'>
                    <h3>To:$aLoc</h3>
                    <h4>$date</h4>
                    <h5>$aTime</h5>
                      </div>
                    </div>
              </div>

              <div class='row'>
                  <div class='col-4 col-cat'>
                      <div class='category'>
                        <h3>Category:</h3>
                        <h4> Luxury</h4>
                      
                      </div>
                      </div>
                  <div class='col-4 col-num'>
                      <div class='number'>
                        <h3>Bus Number:</h3>
                        <h4>$busNo</h4>
                    
                      </div>
                      </div>
                      <div class='col-4 col-price'>
                          <div class='price'>
                              <h3>Price:</h3>
                              <span class='label danger'>Rs. $price/Person</span>
                              
                          </div>
                        </div>
                </div>
              </div>
              <br>




        
        ";
    }
} else {
    echo "0 results";
}
$conn->close();
?>

?>