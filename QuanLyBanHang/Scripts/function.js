function getUrl() {
    return window.location.pathname.split("/");
}
function isLogin() {
    var [domain, controller, method] = getUrl();
    if (controller != "Login" && method != "Index") {
        return window.location.href = "/Login/Index";
    }
}
function noti(text, type = 'success') {
    $.notify(text, {
        className: type,
        position: 'bottom right'
    });
}
var [domain, controller, method] = getUrl();
$("#" + method).addClass('active');

function openPopup(param) {
    window.open(param.url, "", param.parameter);
}

function btnLogin() {
    var username = $("#inputEmail").val(),
        password = $("#inputPassword").val();
    if (!username || !password) {
        noti("Không được bỏ trống!", 'error');
        return;
    }
    $.post(
        '/login/CheckLogin',
        {
            Username: username,
            Password : password
        },
        function (result) {
            if (result.isSuccess) {
                window.location.href = '/Home/Index';
            }
            else {
                noti(result.Message, 'error');
            }
        }
    );
}

function btnLogout() {
    $.post(
        '/Login/Logout',
        function (result) {
            if (result.isSuccess) {
                window.location.href = "/Login/Index";
            }
        }
    );
}


