const axios = require('axios')

let api = axios.create({
    baseURL:'',
    timeout: 5000,
    withCredentials: true
})

module.exports = {
    fetch: function(method,url,data, forceLogin = true){
        return new Promise((resolve,reject) => {
            axios({
                method: method,
                url:url,
                timeout: 10000, // 十秒超时
                ...data
            }).then(response => {
                console.log('*************',response.data);
                resolve(response.data)
            }).catch(err => {
                if (forceLogin && err.response.status === 401) {
                    console.log('401~~~~~~~~');
                }
                //     wechatLogin();
                //     } else {
                    // console.log('~~~~~~~~~', err.response)
                //     }
                reject(err)
            })
        })
    },
    wechatLogin: function(){
        let redirectUri = encodeURIComponent(window.location.href)
        window.location = window.location.origin + '/login?redirectUri=' + redirectUri
    },
    loadUserData:function(){
        return new Promise((resolve, reject) => {
            let user = null
            // let cacheKey = 'authUserJsonStr'
            // let authUserJsonStr = sessionStorage.getItem(cacheKey)
            // if (authUserJsonStr) {
            // user = JSON.parse(sessionStorage.getItem(cacheKey))
            // resolve(user)
            // } else {
            fetch('GET', 'http://m.xiaobaiparty.xiaoyanzhang.com/api/auth_info/', {}, false).then((data) => {
            // fetch('GET', '/api/fake_login/?token=8888', {}, false).then((data) => {
                user = data
                console.log('----4444---',data);
                // sessionStorage.setItem(cacheKey, JSON.stringify(user))
                resolve(user)
            }).catch(() => {
                resolve(null)
            })
            // }
        })
    }

}





// export let fetch = (method,url,data, forceLogin = true) => {
//     return new Promise((resolve,reject) => {
//         axios({
//             method: method,
//             url:url,
//             timeout: 10000, // 十秒超时
//             ...data
//         }).then(response => {
//             resolve(response.data)
//         }).catch(err => {
//             if (forceLogin && err.response.status === 401) {
//                 console.log('未登录');
                
//                 wechatLogin();
//                 } else {
//                 console.log('fetch err', err.response)
//                 }
//             reject(err)
//         })
//     })
// }




