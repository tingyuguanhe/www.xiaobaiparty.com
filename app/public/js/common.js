$(function(){
    let status = is_login();
    if(!!status){
        console.log("登录成功");
        $('#myModal').modal({show: false});
    }
    else{
        console.log("登录失败");
        $('#myModal').modal({show: true});
    }
    var obj = new WxLogin
    ({
        id:"wx_scan_login",
        appid: "wx773c7e04fede247a",
        scope: "snsapi_login",
        redirect_uri:encodeURI(window.location.href) ,
        state: "",
        style: "black"
    });
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
            }
        },
        error:function(err){
            console.log(err);
        }
    });
    return flag;
}