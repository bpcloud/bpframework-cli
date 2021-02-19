
import * as Koa from "koa";
import * as KoaBody from "koa-bodyparser";

declare module "koa" {

  interface Context {
    /**
    * @desc: (使用默认语言) i18n本地化. 返回本地化字符串.
    * @example
    *   __i18n('hello {name}', {name:'world'})
    *   __i18n('hello %s %s', 'name', 'world')
    */
    __i18n(phrase: string, ...params: any[]): string;
    
    /**
    * @desc: (使用指定语言) i18n本地化. 返回本地化字符串.
    * @example
    *   __i18nLang('en', 'hello {name}', {name:'world'})
    *   __i18nLang('en', 'hello %s %s', 'name', 'world')
    */
    __i18nLang(lang:string, phrase:string, ...params: any[]):string;
  }
}