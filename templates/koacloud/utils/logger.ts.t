'use strict';

import { getErrorMessage } from 'bpframework';

/**
* @desc 日志对象.
*/
export const logger = {
  error(...msg: any[]): any {
    let m = '';
    for (let i = 0; i < msg.length; i++) { m += getErrorMessage(msg[i]) + ' '; }
    console.error(m);
  },
  info(...msg: any[]): any {
    let m = '';
    for (let i = 0; i < msg.length; i++) { m += getErrorMessage(msg[i]) + ' '; }
    console.log(m);
  },
  warn(...msg: any[]): any {
    let m = '';
    for (let i = 0; i < msg.length; i++) { m += getErrorMessage(msg[i]) + ' '; }
    console.warn(m);
  },
  debug(...msg: any[]): any {
    let m = '';
    for (let i = 0; i < msg.length; i++) { m += getErrorMessage(msg[i]) + ' '; }
    console.debug(m);
  },
}