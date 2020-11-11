'use strict';

/**
* Copyright (c) 2020 Copyright bp All Rights Reserved.
*/

import * as koa from 'koa';
import { ServerResponse } from 'http';
import * as path from 'path';
import * as locale from './middleware/locale';


/**
* @desc: 初始化koa, 及中间件.
*/
export function createApp(): koa {

  var app = new koa();

  // locale.
  require('koa-locale')(app)
  locale.install();
  
  // body解析.
  app.use(require('koa-bodyparser')({
    onerror: onErrorBodyParser,
    enableTypes: ['json', 'form', 'text'],
    extendTypes: {
      text: ['application/xml', 'text/xml'],
    }
  }));

  return app;
}


/**
 * @desc: body解析错误处理.
 */
function onErrorBodyParser(err:any, ctx:koa.Context) {
  // if (__debug) {
  //   console.error(err);
  // }
  ctx.response.body = 'error body'
}