'use strict';

/**
* Copyright (c) 2019 Copyright bp All Rights Reserved.
* Author: lipengxiang
* Date: 2019-08-20 14:56
* Desc: 
*/

import * as koa from 'koa';
import * as URL from 'url';
const locales = require('koa-locales');

const DefaultLocale = 'zh-CN';

export {
  install,
};

function install(app: koa) {

  require('koa-locales')(app, {
    dirs: [__dirname + '/resource/locales'],
    defaultLocale: DefaultLocale,
    functionName: '__i18n',
    queryField: 'locale', // querystring - `/?locale=en-US`
    cookieField: 'locale',
    localeAlias: {
      zh: 'zh-CN',
    },
  });


  (<any>global).__i18n = (phrase: string, ...params: any[]): any => {
    return (<any>app).__i18n(DefaultLocale, phrase, ...params);
  }

  (<any>global).__i18nLang = (lang:string, phrase: string, ...params: any[]): any => {
    return (<any>app).__i18n(lang, phrase, ...params);
  }
}

