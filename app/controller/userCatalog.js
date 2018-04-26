// 用户主页
const Controller = require('egg').Controller;
const axios = require('axios')

class userCatalogController extends Controller {
  async index(ctx) {
    
    const id = ctx.params.id;   //目录id
    //console.log('**********',ctx.service);
    const detailData = {
      userInfo:{
            nickname:'乔斯',
            position:'汽车专家',
            fans_count: 10,
            follow_count: 20
        },
      list:[
        {
          id:1,
          name:'光头强',
          position:'伐木工'
        },
        {
          id:2,
          name:'熊大',
          position:'森林守护者1'
        },
        {
          id:3,
          name:'熊二',
          position:'森林守护者2'
        }
      ],
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
          name:'赵小刀',
          position:'中国女演员',
          avatar_url:'../public/img/photo/photo1.jpg',
          following: true,
          followed: true
        },
        {
          name:'赵丽颖',
          position:'花千骨女主',
          avatar_url:'../public/img/photo/photo2.jpg',
          following: false,
          followed: false
        },
        {
          name:'胭脂',
          position:'胭脂女主',
          avatar_url:'../public/img/photo/photo3.jpg',
          following: true,
          followed: false
        },
        {
          name:'胭脂',
          position:'胭脂女主',
          avatar_url:'../public/img/photo/photo4.jpg',
          following: true,
          followed: false
        },
        {
          name:'胭脂',
          position:'胭脂女主',
          avatar_url:'../public/img/photo/photo5.jpg',
          following: false,
          followed: false
        }
      ],
    }
   
    await this.ctx.render('user_catalog/index.tpl', detailData);
  }
}

module.exports = userCatalogController;


