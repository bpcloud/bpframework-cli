
/**
 * Copyright (c) 2017 Copyright tj All Rights Reserved.
 * Author: lipengxiang
 * Date: 2017-06-12
 * Desc: 全局
 */

import * as febs from 'febs'

declare global {
  /**
  * @desc: i18n本地化. 返回值赋值给 err_msg 时, 会自动在response前使用对应的本地化语言.
  * e.g. __i18n('hello {{name}}', {name:'world'})
  */
  function __i18n(phrase:string, params?:object):any;
}

