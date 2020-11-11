
import * as Koa from "koa";
import * as KoaBody from "koa-bodyparser";

declare module "koa" {

  interface Context {
    /**
    * @desc: i18n本地化. 返回本地化字符串.
    */
    __i18n(phrase:string, params?:object):string;
  }
}