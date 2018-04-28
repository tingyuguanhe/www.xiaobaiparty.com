// app/controller/home.js
const Controller = require('egg').Controller;
const fetch = require('../service/api/index')
const axios = require('axios')

const api = require('../service/api/api')

class HomeController extends Controller {
 
  async index() {

    const ctx = this.ctx;

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

    let result = await api.login();

    let user = null;
    if(!!result && !!result.status && result.status == "ok"){
        user = await api.getUserInfo();
    }

    if(!!user){
      ctx.session.user = user;
      ctx.session.login_in = true;
    }
  
    await this.ctx.render('find/index.tpl', data);
  }
  async islogin(){
    const ctx = this.ctx;
    let code = 0;
    let msg = "未登录";
    if(!!ctx.session.user && ctx.session.login_in){
      code = 1;
      msg = "已登录";
    }

    ctx.body = {
      code:code,
      msg:msg
    };
  }

}

module.exports = HomeController;
