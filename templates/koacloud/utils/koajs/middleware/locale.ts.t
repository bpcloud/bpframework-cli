'use strict';

/**
* Copyright (c) 2019 Copyright bp All Rights Reserved.
* Author: lipengxiang
* Date: 2019-08-20 14:56
* Desc: 对返回的数据格式进行处理.
*/

import * as koa from 'koa';
import * as URL from 'url';
import * as i18n from 'i18n';

const DefaultLocale = 'zh-CN';

export {
  install,
  getLocaleString,
  getLocaleStringByContext
};

function install() {
    
  // i18n, 使用 __('key') 或者 ctx.__('key') 获取字符.
  i18n.configure({
    directory: './locales',
    register: global,
    extension: '.json',
    queryParameter: 'locale', // querystring - `/?locale=en-US`
    locales: ['zh-CN', 'en'], // `zh-CN` defaultLocale, must match the locales to the filenames
  });

  /**
  * @desc: i18n本地化. 返回值赋值给 err_msg 时, 会自动在response前使用对应的本地化语言.
  * e.g. __i18n('hello {{name}}', {name:'world'})
  */
  (<any>global).__i18n = (phrase:string, params?:object):any=>{
    return [phrase, params];
  }
}


/**
* @desc: 获得本地化语言字符串.
*/
function getLocaleString(locale:string, phrase: string, params?: object): string {
  return i18n.__({
    phrase: phrase,
    locale: locale
  }, <i18n.Replacements>params);
}


/**
* @desc: 获得本地化语言字符串.
*/
function getLocaleStringByContext(ctx: koa.Context, phrase: string, params?: object): string {
  let url = URL.parse(ctx.request.url, true);
  let locale = url.query.locale || DefaultLocale;
  if (Array.isArray(locale)) {
    locale = locale[0];
  }

  return i18n.__({
    phrase: phrase,
    locale: locale
  }, <i18n.Replacements>params);
}
