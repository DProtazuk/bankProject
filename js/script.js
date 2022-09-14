$('body').on('click',".but_enter",  function() {
    var login = $('.login').val();
    var password = $('.password').val();

    if(login && password) {
        auth(login,password);
    }
    else {
        $('.text_eror').html("Не все поля введены!");
    }
});

function auth(login,password) {
    $.ajax({
        url: "/php/function.php",
        method: 'post',
        dataType : "html",
        data: {action:'auth', login:login, password:password},
        success: function(data){
            if(data == "1"){
                location.reload();
            }
            else $('.text_eror').html(data);
        }
    });
}


$('body').on('click',".but_exit",  function() {

    if (confirm("Выйти?")) {
        $.ajax({
            url: "/php/function.php",
            method: 'post',
            dataType : "html",
            data: {action:'delCok'},
            success: function(data){
                location.reload();
            }
        });
    }
});

$('body').on('click',".save",  function() {
    var id=$(this).attr("data-id");
    var text = $('#floatingTextarea').val();

        $.ajax({
            url: "/php/function.php",
            method: 'post',
            dataType : "html",
            data: {action:'save', id:id, text:text},
            success: function(data){
                window.location.href = "questionnaires.php";
            }
        });
});

$('body').on('click',".rejection",  function() {
    var id=$(this).attr("data-id");
    var text = $('#floatingTextarea').val();

        $.ajax({
            url: "/php/function.php",
            method: 'post',
            dataType : "html",
            data: {action:'rejection', id:id, text:text},
            success: function(data){
                window.location.href = "questionnaires.php";
            }
        });
});

