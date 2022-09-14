<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Анкета</title>
</head>
<body>
    <?php include($_SERVER['DOCUMENT_ROOT']."/pages/header.php"); ?>

    <?php 
        if(!$good){
            return false;
        }
    ?>

    <?php 
        $id = $_GET['id'];
        $result = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM `questionnaires` WHERE `id` = '$id'"));
    ?>

    <div class="container p-5 pt-4">
        <h4 class="fw-bolder text-decoration-underline text-secondary text-center">Номер Анкеты: <?php echo $result['id'];?></h4>
        <h5 class="fw-bolder text-decoration-underline">Общая информация:</h5>
        <div class="px-2">
            <h6>ФИО: <span class="text-primary"><?php echo $result['surname']." ".$result['name']." ".$result['patronymic']?></span></h6>
            <h6>Возраст: <span class="text-primary"><?php echo $result['age'];?></span></h6>
            <h6>Пол: <span class="text-primary"><?php echo $result['floor'];?></span></h6>
            <h6>Семейное положение: <span class="text-primary"><?php echo $result['marital_status'];?></span></h6>
        </div>

        <h5 class="fw-bolder text-decoration-underline mt-3">Паспортная информация:</h5>
        <div class="px-2">
            <h6>Дата рождения: <span class="text-primary"><?php echo date('d.m.Y', strtotime($result['date_of_birth'])) ;?></span></h6>
            <h6>Серия паспорта: <span class="text-primary"><?php echo $result['series'];?></span></h6>
            <h6>Номер паспорта: <span class="text-primary"><?php echo $result['passport_number'];?></span></h6>
            <h6>Адрес регистрации: <span class="text-primary"><?php echo $result['issue_address'];?></span></h6>
            <h6>Адрес жительства: <span class="text-primary"><?php echo $result['registration'];?></span></h6>
            <h6>Дата выдачи: <span class="text-primary"><?php echo date('d.m.Y', strtotime($result['date_of_issue'])) ;?></span></h6>
        </div>

        <h5 class="fw-bolder text-decoration-underline mt-3">Контакты:</h5>
        <div class="px-2">
            <h6>Телефон: <span class="text-primary"><?php echo $result['telephone'];?></span></h6>
            <h6>Телефон родственников: <span class="text-primary"><?php echo $result['relatives_phone_number'];?></span></h6>
        </div>

        <h5 class="fw-bolder text-decoration-underline mt-3">Сведения о занятости:</h5>
        <div class="px-2">
            <h6>Наименование организации: <span class="text-primary"><?php echo $result['organization'];?></span></h6>
            <h6>Адрес организации: <span class="text-primary"><?php echo $result['organizations_address'];?></span></h6>
            <h6>Должность: <span class="text-primary"><?php echo $result['post'];?></span></h6>
            <h6>Стаж работы: <span class="text-primary"><?php echo $result['experience'];?></span></h6>
            <h6>Телефон работодателя: <span class="text-primary"><?php echo $result['employers_phone_number'];?></span></h6>
        </div>

        <h5 class="fw-bolder text-decoration-underline mt-3">Сведения о кредите:</h5>
        <div class="px-2">
            <h6>Запрашиваемая сумма: <span class="text-primary"><?php echo $result['requested_amount'];?></span></h6>
            <h6>Срок: <span class="text-primary"><?php echo $result['term'];?></span></h6>
            <h6>Цель кредита: <span class="text-primary"><?php echo $result['purpose_of_the_loan'];?></span></h6>
            <h6>Fico(кредитный рейтинг): <span class="text-primary"><?php echo $result['fico'];?></span></h6>
        </div>

        <h5 class="fw-bolder text-decoration-underline mt-3">Финансовая информация:</h5>
        <div class="px-2">
            <h6>Зароботная плата: <span class="text-primary"><?php echo $result['salary']." ₽";?></span></h6>
            <h6>Срок: <span class="text-primary"><?php echo $result['term'];?></span></h6>
            <h6>Пенсия и соц выплаты: <span class="text-primary"><?php echo $result['Pension_and_social_benefits'];?></span></h6>
            <h6>Информация по кредитным платежам на данный момент: <span class="text-primary"><?php echo $result['Information_on_credit_payments'];?></span></h6>
            <h6>Прочие доходы: <span class="text-primary"><?php echo $result['other_income'];?></span></h6>
        </div>


        <?php 
            if($result['status'] == "1") {
                echo '<div class="form-floating w-50 mt-3">
                <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
                <label for="floatingTextarea">Оставить комментарий:</label>
            </div>
    
            <div class="d-flex w-50 justify-content-end mt-3">
                <button data-id="'.$_GET['id'].'" type="button" class="btn btn-success me-3 save">Одобрить</button>
                <button data-id="'.$_GET['id'].'" type="button" class="btn btn-danger rejection">Отказать</button>
            </div>';
            }
            if($result['status'] == "2") {
                echo '<h5 class="fw-bolder text-decoration-underline mt-5">Комментарий сотрудника:</h5>
                <div class="px-2">
                    <h6><span class="text-primary">'.$result['employees_comment'].'</span></h6>
                </div><h3 class="text-center text-success fw-bolder text-decoration-underline mt-4">Статус: Одобрено</h3>';
            }
            if($result['status'] == "0") {
                echo '<h5 class="fw-bolder text-decoration-underline mt-5">Комментарий сотрудника:</h5>
                <div class="px-2">
                    <h6><span class="text-primary">'.$result['employees_comment'].'</span></h6>
                </div><h3 class="text-center text-danger fw-bolder text-decoration-underline mt-4">Статус: Отказано</h3>';
            }
        ?>

        

        
    </div>
</body>
</html>