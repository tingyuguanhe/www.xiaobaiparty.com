/**
 * Created by wacily on 2018/4/28.
 */

'use strict';

const Controller = require('egg').Controller;

class BaseController extends Controller {
    constructor(ctx) {
        super(ctx);
        if(ctx.request.url == '/'){

        } else {
            if(!ctx.session.user || !ctx.session.logged_in){
                ctx.redirect('/');
            }
        }
    }
}

module.exports = BaseController;
