//消息中心
const Controller = require('egg').Controller;

class messageController extends Controller {
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
    await this.ctx.render('search/index.tpl', data);
  }

}

module.exports = messageController;
