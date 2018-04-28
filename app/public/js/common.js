$(function(){
    var user_string = sessionStorage.getItem("user_info");
    var user = null;
    var user_status = false;

    if(user_string && user_string.length > 0){
        user = JSON.parse(user_string);
        user_status = true;
    }
    else{
        user_status = is_login();
    }

    if(!!user_status){
        console.log("登录成功");
        $('#myModal').modal({show: false});
        var usser_info = user || JSON.parse(sessionStorage.getItem("user_info"));
        console.log("user_info", usser_info);
    }
    else{
        console.log("登录失败");
        $('#myModal').modal({show: true});

        var obj = new WxLogin
        ({
            id:"wx_scan_login",
            appid: "wx773c7e04fede247a",
            scope: "snsapi_login",
            redirect_uri:encodeURI(window.location.href) ,
            state: "",
            style: "black"
        });
    }

})

function is_login(){
    var flag = false;
    $.ajax({
        url:"/islogin",
        type:"GET",
        dataType:"JSON",
        async:false,
        success:function(resData){
            if(resData.code == 1){
                flag = true;
                sessionStorage.setItem("user_info", JSON.stringify(resData.data));
            }
        },
        error:function(err){
            console.log(err);
        }
    });
    return flag;
}