<?php include($_SERVER['DOCUMENT_ROOT']."/php/connect.php"); ?>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<?php $_SERVER['DOCUMENT_ROOT']?>/style/style.css">
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script src="<?php $_SERVER['DOCUMENT_ROOT']?>/js/script.js"></script>


<div class="container">
    <div class="w-100 row d-flex justify-content-between p-2 border-bottom border-2 border-primary">
        <img src="/res/logo.png" class="col-1">

        <div class="col-5 d-flex justify-content-between align-items-center">

            <a href="<?php $_SERVER['DOCUMENT_ROOT']?>/index.php">
                <button class="btn menu0 btn-primary">Главная</button>
            </a>
            
            <a href="<?php $_SERVER['DOCUMENT_ROOT']?>/pages/questionnaires.php">
                <button class="menu1 btn btn-primary">Анкеты</button>
            </a>

            <a href="<?php $_SERVER['DOCUMENT_ROOT']?>/pages/approved.php">
                <button class="menu3 btn btn-primary">Одобренные</button>
            </a>

            <a href="<?php $_SERVER['DOCUMENT_ROOT']?>/pages/refusals.php">
                <button class="menu2 btn btn-primary">Отказные</button>
            </a>
            
        </div>

        <div class="col-1"></div>

        <div class="col-2 d-flex justify-content-end align-items-center">
            <?php 
                $key = $_COOKIE['key'];
                if(!$key){
                    echo '<button data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-dark">Войти</button>';
                }
                else {
                    $result = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM `user` WHERE `idUser` = '$key'"));
                    if(isset($result)){
                        if($key == $result['idUser']) {
                            echo '<h4 class="fw-semibold me-5 text-danger text-decoration-underline">'.$result['login'].'</h4><button class="btn btn-dark but_exit">Выйти</button>';
                            $good = 1;
                        }
                        else echo '<button data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-dark">Войти</button>';
                    }
                    else echo '<button data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-dark">Войти</button>';
                }
            ?>
            
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title fw-bold" id="staticBackdropLabel">Войти в систему</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <div class="modal-body">
        <div class="container">
            <div class="w-75 m-auto">
                <input required type="text" class="form-control login" placeholder="Введите Логин:">
                <input required type="text" class="form-control mt-3 password" placeholder="Введите Пароль:">
                <h6 class="text_eror text-center mt-4 text-danger fw-semibold"></h6>
            </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary but_enter">Войти</button>
      </div>
      
    </div>
  </div>
</div>
