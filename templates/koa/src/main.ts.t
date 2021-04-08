'use strict';

import { BpApplication, Application, LogLevel } from 'bpframework';
import './configure';
import './events';
import './controllers';
import './crons';

// use koa.
import * as koa from 'koa';

import * as middleware_i18n from '@bpframework/middleware-koa-i18n';

@BpApplication()
class App {
  /**
  * @desc main entry.
  */
  main() {

    // middlewares.
    Application.use(middleware_i18n.middleware())

    // run.
    Application.runKoa({
      logLevel: LogLevel.DEBUG,
      enableScheduled: !!(global as any).enableScheduled,
      app: new koa(),
    });
  }
}