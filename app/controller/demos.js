const Controller = require('egg').Controller;
const axios = require('axios')

class DemosController extends Controller {
  async list() {
    // const response = await axios.get('https://api.github.com/users/ZhangBohan/repos');
    // console.log('data list', response.data);
    
    await this.ctx.render('demos/list.tpl');
  }
  async detail(ctx) {
    const repo = ctx.params.repo;
    const response = await axios.get(`https://api.github.com/repos/ZhangBohan/${repo}`);
    await this.ctx.render('demos/detail.tpl', { data: response.data });
  }
}

module.exports = DemosController;

