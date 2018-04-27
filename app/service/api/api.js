
const service = require('./index')
const fetch = service.fetch
const domain = "http://m.xiaobaiparty.xiaoyanzhang.com"
var urls = {
    login: () => fetch('GET', domain+'/api/fake_login/?token=8888&userId=1'),//登录
    getUserInfo : () => fetch('GET', domain+'/api/auth_info/'),//获取当前登录用户信息
    updateUserInfo : (data) => fetch('POST', domain+'/api/m/userinfo/edit/',{data: data}),  //修改用户信息
    //新建目录
    cerateNewFile: (data) => fetch('POST', '/api/folders/',{data: data}),
    //上传文件
    uploadFile: (data) => fetch('POST', '/api/articles/',{data: data}),
    //修改目录
    updateFile: (param,data) => fetch('PUT', `/api/folders/${param.article_set_id}/`,{data: data}),
    //删除目录
    deleteFile: (param) => fetch('DELETE', `/api/folders/${param.article_set_id}/`),

    //获取登录用户的目录列表
    getMyFoldersList: (param) => fetch('GET', `/api/my_folders/`),

    //收藏
    favoriteArticle: (data) => fetch('POST', '/api/favorites/',{data: data}),
    //我的收藏中取消收藏
    deleteFollow: (param) => fetch('DELETE', `/api/favorites/${param.collection_id}/`),
    //目录中删除收藏
    deleteFollowFromFolder: (param) => fetch('DELETE', `/api/folders/${param.article_set_id}/articles/${param.collection_id}/`),

    //批量收藏
    favoriteBatch: (data) => fetch('POST', '/api/favorites/batch',{data: data}),

    deleteFavoriteBatch: (data) => fetch('DELETE', '/api/favorites/batch',{data: data}),

    //默认目录
    getDefaultFolderDetails: () => fetch('GET', '/api/folders_default/'),
    //目录列表
    getFoldersList: (param) => fetch('GET', `/api/users/${param.user_id}/folders/`),
    //收藏列表
    getFavoriteList: (param) => fetch('GET', `/api/users/${param.user_id}/favorites/?query_type=${param.type}`),
    //目录详情
    getFolderDetails: (param) => fetch('GET', `/api/folders/${param.id}/articles`),

    //关注
    followUser: (data) => fetch('POST', '/api/m/userinfo/watch_user/',{data:data}),
    //取消关注
    unfollowUser: (data) => fetch('POST', '/api/m/userinfo/unwatch_user/',{data:data}),

    //粉丝列表
    getFansList: (param) => fetch('GET', `/api/m/userinfo/${param.user_id}/followers/`),
    //关注列表
    getFollowList: (param) => fetch('GET', `/api/m/userinfo/${param.user_id}/watchers/`),

    //发现--行业达人
    getDiscoveryUsers:() => fetch('GET', '/api/discovery/users/'),
    //发现--精品目录
    getDiscoveryFolders: () => fetch('GET', '/api/discovery/folders/'),
    // 发现--banner
    getDiscoveryBanners: () => fetch('GET', '/api/discovery/banners/'),

    //订阅
    postSubscribe: (data) => fetch('POST', '/api/subscribe',{data:data}),

    //刷一刷
    getRefresh: (param) => fetch('GET',`/api/refresh/?query_type=${param.type}`),

    //根据目录Id获取目录及作者基本信息
    getUserFolderDetails: (param) => fetch('GET', `/api/folders/${param.id}/`),

    //根据user_id获取用户信息  
    getUserBaseInfo: (param) => fetch('GET', `/api/m/userinfo/${param.user_id}/`),

    //消息中心
    getNotifications: () => fetch('GET', domain+'/api/notifications/'),

    // //支付--获取充值金额
    // getRechargeOptions= () => fetch('GET', `/api/recharge/`),
    // //提现
    // withdrawMoney: (data) => fetch('POST', `/api/withdraw/`,{data: data}),
    // //微信配置
    // wechatConfig: (data) =>  fetch('POST', `/api/wechat_h5/config/`, {data: data}),
    //生成本地订单号

    // getOrderId: (data) => fetch('POST', `/api/orders/`, {data:data}),
    // //支付
    // wechatOrder: (data) => fetch('POST', `/api/wechat_h5/order/`, {data:data})

}

module.exports = urls