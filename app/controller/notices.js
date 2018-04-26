//消息中心
const Controller = require('egg').Controller;

class NoticesController extends Controller {
  // async index() {
  //   // this.ctx.body = 'Hello world';
  //   const aa = {
  //     name: '66666'
  //   };
  //   await this.ctx.render('my_catalog.tpl', aa);
  // }

  async index() {
    const data = {
      listData:[
          {
              user_nickname:'乌拉拉',
              from_user:'阿不思',
              time:'2天前'
          },
          {
            user_nickname:'乌拉拉',
            from_user:'阿不思',
            time:'2天前'
        }
      ]
      
    }
    await this.ctx.render('notice/notices.tpl', data);
  }

}

module.exports = NoticesController;
