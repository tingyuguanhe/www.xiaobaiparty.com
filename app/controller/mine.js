// app/controller/home.js
const Controller = require('egg').Controller;

class MineController extends Controller {
  // async index() {
  //   // this.ctx.body = 'Hello world';
  //   const aa = {
  //     name: '66666'
  //   };
  //   await this.ctx.render('my_catalog.tpl', aa);
  // }

  async index() {
    const data = {
      userInfo:{
        nickname:'乔斯',
        position:'汽车专家',
        fans_count: 10,
        follow_count: 20
      },
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
      payAmountOptions:[
        {
          money: 10,
          id:1
        },
        {
          money: 20,
          id:2
        },
        {
          money: 30,
          id:3
        }
      ]
      
    }
    await this.ctx.render('mine/index.tpl', data);
  }

}

module.exports = MineController;
