<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Sync</title>

    <link rel="stylesheet" href="assets/css/font-awesome.css">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/mdb.min.css" rel="stylesheet">
    <link href="assets/css/galeria.css" rel="stylesheet">

    <style>body { overflow-x: hidden; padding-left: 15px; }</style>

</head>
<body class="hidden-sn white-skin">

<main>

<div align="center">   
<img src="../assets/img/cargando.gif" alt="">
</div> 
</main>  


    <script type="text/javascript" src="assets/js/jquery-3.3.1.min.js"></script>

    <script type="text/javascript" src="assets/js/popper.min.js"></script>

    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="assets/js/mdb.min.js"></script>
    <script>
        // SideNav Initialization
        $(".button-collapse").sideNav();
        
        new WOW().init();

       </script>
 
<script>
    window.location.href="execute.php?op=<?php echo $_REQUEST["op"]; ?>&type=<?php echo $_REQUEST["type"]; ?>&fecha=<?php echo $_REQUEST["fecha"]; ?>"
</script>

</body>

</html>
