
const service = require('./index')
const fetch = service.fetch
const domain = "http://m.xiaobaiparty.xiaoyanzhang.com"
var urls = {
    login: () => fetch('GET', domain+'/api/fake_login/?token=8888&userId=1'),//登录
    getUserInfo : () => fetch('GET', domain+'/api/auth_info/'),//获取当前登录用户信息
    updateUserInfo : (data) => fetch('POST', domain+'/api/m/userinfo/edit/',{data: data})  //修改用户信息

}

module.exports = urls