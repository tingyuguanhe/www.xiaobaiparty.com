$(function(){
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