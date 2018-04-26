
const Controller = require('egg').Controller;
const axios = require('axios')

class folderDetailController extends Controller {
  async detail(ctx) {
    
    const id = ctx.params.id;   //目录id
    //console.log('**********',ctx.service);
    const detailData = {
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
    }
   
    await this.ctx.render('catalog_detail/index.tpl', detailData);
  }
}

module.exports = folderDetailController;


