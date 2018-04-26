//消息中心
const Controller = require('egg').Controller;

class UploadController extends Controller {
  // async index() {
  //   // this.ctx.body = 'Hello world';
  //   const aa = {
  //     name: '66666'
  //   };
  //   await this.ctx.render('my_catalog.tpl', aa);
  // }

  async index() {
    const data = {
      folders:[
        {
            name:'今天很郁闷',
            checked: false
        },
        {
          name:'汽车行业',
          checked: true
        },
        {
          name:'智能家具',
          checked: true
        },
        {
          name:'高级咖啡',
          checked: false
        }
      ],

      
    }
    await this.ctx.render('upload/index.tpl', data);
  }

}

module.exports = UploadController;
