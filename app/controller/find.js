// app/controller/home.js
const Controller = require('egg').Controller;
const fetch = require('../service/api/index')
const axios = require('axios')

const api = require('../service/api/api')

class HomeController extends Controller {
 
  async index() {

    const data = {
      url:'',
      userInfo:{
        nickname:'乔斯',
        position:'汽车专家',
        fans_count: 10,
        follow_count: 20
      },
      navMemu:[
        {
          name:'全部',
          value: 0
        },
        {
          name:'我关注的',
          value: 1
        },
        {
          name:'我订阅的',
          value: 2
        }
      ],
      activeNavMemu: 1,
      listData:[
        {
          id:1,
          nickname: '哗啦啦啦',
          title:'我是title我是title我是title我是title我是title我是title我是title我是title',
          folders:['目录1','目录2','目录3']
        },
        {
          id:2,
          nickname: '密密麻麻密密麻麻',
          title:'我是title我是title我是title我是title我是title我是title我是title我是title',
          folders:['目录1','目录2','目录3']
        }
      ],
      users:[
        {
          id:1,
          name:'赵小刀',
          position:'中国女演员',
          avatar_url:'../public/img/photo/photo1.jpg'
        },
        {
          id:2,
          name:'赵丽颖',
          position:'花千骨女主',
          avatar_url:'../public/img/photo/photo2.jpg'
        },
        {
          id:3,
          name:'胭脂',
          position:'胭脂女主',
          avatar_url:'../public/img/photo/photo3.jpg'
        },
        {
          id:4,
          name:'胭脂',
          position:'胭脂女主',
          avatar_url:'../public/img/photo/photo4.jpg'
        },
        {
          id:4,
          name:'胭脂',
          position:'胭脂女主',
          avatar_url:'../public/img/photo/photo5.jpg'
        }
      ],
      folders:[
        {
          name:'我是目录我是目录我是目录我是目录',
          sub: 10,
          content: 21,
          money: 100,
          avatar_url:'../public/img/default_file.png'
        },
        {
          name:'我是目录我是目录我是目录我是目录',
          sub: 10,
          content: 21,
          money: 100,
          avatar_url:'../public/img/default_file.png'
        },
        {
          name:'我是目录我是目录我是目录我是目录',
          sub: 10,
          content: 21,
          money: 100,
          avatar_url:'../public/img/default_file.png'
        },
        {
          name:'我是目录我是目录我是目录我是目录',
          sub: 10,
          content: 21,
          monwy: 100,
          avatar_url:'../public/img/default_file.png'
        },
        {
          name:'我是目录我是目录我是目录我是目录',
          sub: 10,
          content: 21,
          money: 100,
          avatar_url:'../public/img/default_file.png'
        }
      ]

      
    }

    //let result = await api.login();
    let result = await this.ctx.curl("http://m.xiaobaiparty.xiaoyanzhang.com/api/fake_login/?token=8888&userId=1", {
        method: 'get',
        dataType: 'json'
    });
    let set_cook = result.headers["set-cookie"];
    let csrf_id = set_cook[0].split(";")[0].split("=")[1];
    let sess_id = set_cook[1].split(";")[0].split("=")[1];
    console.log("set_cook :", result.headers);
    console.log("csrf_id :", csrf_id);
    console.log("sess_id :", sess_id);

    //let user = await api.getUserInfo();
    //if(!!result && !!result.status && result.status == "ok"){
      //let user = await api.getUserInfo();
      //console.log("user :", user);
    //}

    let user = await this.ctx.curl("http://m.xiaobaiparty.xiaoyanzhang.com/api/auth_info/", {
        method: 'get',
        headers:{
          'csrftoken':csrf_id,
          'sessionid':sess_id,
          'content-type': 'application/json',
        },
        dataType: 'json'
    });
    console.log("____________________________________________");
    console.log("user: ",user);
    
  
    await this.ctx.render('find/index.tpl', data);
  }


  

}

module.exports = HomeController;
