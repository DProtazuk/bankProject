<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Одобренные</title>
</head>
<body>
    <?php include($_SERVER['DOCUMENT_ROOT']."/pages/header.php"); ?>
    <script>
        $('.menu3').removeClass("btn-primary").addClass("btn-info")
    </script>

    <?php 
        if(!$good){
            return false;
        }
    ?>

    <div class="container p-5">
        <?php
            $result =  mysqli_query($conn, "SELECT * FROM `questionnaires` WHERE `status` = 2");
            $num = mysqli_num_rows($result);
            $result = mysqli_fetch_all($result);
            echo "<pre>";
            //echo $num;
            for ($i = 0; $i < $num; $i++) {
                echo '<div class="d-flex w-100">
                <h6 class="me-4 fs-5 fst-italic">№'.$result[$i][0].'</h6>
                <h6 class="me-4 fs-5 ">'.$result[$i][1].' '.$result[$i][2].' '.$result[$i][3].'</h6>
                <a href="page.php?id='.$result[$i][0].'">Подробнее</a>
            </div>';
            }
        ?>
    </div>
    
</body>
</html>

