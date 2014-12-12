<?php
$q = intval($_GET['q'];

$con = myslqli_connect('jdbc:mysql://localhost/servicio2020', 'root', 'Doctor124', 'servicio2020');
if(!$con) {
    die('Couldn't connect: ' . mysqli_error($con));
]
mysqli_select_db($con, "listaDeNinos");
$sql = "SELECT * FROM Nino WHERE nombre LIKE %".$q"%;";
$result=mysqli_query($con,$sql);
while($row = mysqli_fetch_array($result)) {
    echo "<tr>"
    echo "<td>" . $row['id'] . "</td>"
    echo "<td>" . $row['nombre'] . "</td>"
    echo "<td>" . $row['fecha_nac'] . "</td>"
    echo "<td>" . $row['alergias'] . "</td>"
    echo "<td>" . $row['tel'] . "</td>"
}