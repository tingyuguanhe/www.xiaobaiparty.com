//消息中心
const Controller = require('egg').Controller;

const fs = require('fs');
const path = require('path');
const awaitWriteStream = require('await-stream-ready').write;
const sendToWormhole = require('stream-wormhole');

const fetch = require('../service/api/index')
const axios = require('axios')
const api = require('../service/api/api')

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

    async upload() {
      const ctx = this.ctx;
      console.log(1111111,  ctx.request.body);

      const stream = await this.ctx.getFileStream();

      console.log("22222", stream);

    //文件名称
      const filename = stream.filename;

      //文件标题
      let file_title = stream.fields.file_title;
      //粘贴地址
      let copy_address = stream.fields.copy_address;
      //所属目录
      //let file_title = stream.fields.file_title;
      //详细描述
      let intro_detail = stream.fields.intro_detail;

      console.log("文件名称",filename);
      console.log("文件标题",file_title);
      console.log("粘贴地址",copy_address);
      //console.log("所属目录",filename);
      console.log("详细描述",intro_detail);

      const target = path.join(this.config.baseDir, 'app/public/upload', filename);
      const writeStream = fs.createWriteStream(target);
      try {
          await awaitWriteStream(stream.pipe(writeStream));
      } catch (err) {
          await sendToWormhole(stream);
          throw err;
      }

      // let postData = {
      //     "title":file_title,
      //     "url":copy_address,
      //     "article_set_id":69
      // }
    let postData = {
        "title":"erjiceping4",
        "url":"http://www.geekpark.net/news/223538",
        "article_set_id":69
    }
      let upload = await api.uploadFile(postData);
    // let upload = await this.ctx.curl("http://m.xiaobaiparty.xiaoyanzhang.com/api/articles/", {
    //     method: 'post',
    //     dataType: 'json',
    //     data:postData
    // });
      console.log("upload", upload);

      this.ctx.redirect('/upload');


  }

}

module.exports = UploadController;
