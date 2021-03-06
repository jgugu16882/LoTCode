jQuery(document).ready(function () {
    $('#btn').click(function () {
        postServer($(this));
    });

    $('input').keyup(function () {
        $(this).parent().find('.error').fadeOut('fast');
        if (event.keyCode == 13) { console.log('Enter'); postServer($(this)); }
    });

    function postServer(obj) {
        var username = $('input[name=userName]').val();
        var password = $('input[name=passWord]').val();
        if (username == '') {
            obj.parent().find('.error').fadeOut('fast', function () {
                $(this).css('top', '27px');
            });
            obj.parent().find('.error').fadeIn('fast', function () {
                $(this).parent().find('.username').focus();
            });
            return false;
        }
        if (password == '') {
            obj.parent().find('.error').fadeOut('fast', function () {
                $(this).css('top', '96px');
            });
            obj.parent().find('.error').fadeIn('fast', function () {
                $(this).parent().find('.password').focus();
            });
            return false;
        }
        var url = $('#returnUrl').val();
        if (url == '' || url.length < 9) {
            url = '/PawRoot/Manager/Index'
        }
        $.post('/PawRoot/Manager/LoginOn', { PawName: username, PawPass: password }, function (data) {
            if (data.Status) {
                location.href = url;
            } else {
                easyDialog.open({ container: { content: data.Msg }, autoClose: 2000 });
            }
        });
    }
});