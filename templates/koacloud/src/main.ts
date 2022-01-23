'use strict';

import { BpApplication, Application, LogLevel } from 'bpframework';
import './configure';
import './events';
import './controllers';
import './crons';

// must import before Autowired service.
import './services/impl';

// use koa.
import * as koa from 'koa';

import * as middleware_i18n from '@bpframework/middleware-koa-i18n';
import * as middleware_logger from '@bpframework/middleware-log4js';

@BpApplication()
class App {
  /**
   * @desc main entry.
   */
  main() {
    // middlewares.
    Application.use(middleware_i18n.middleware());
    Application.use(middleware_logger.middleware);

    // run.
    Application.runKoa({
      logLevel: LogLevel.DEBUG,
      app: new koa(),
      springCloudBusConfigurePrefix: 'spring.rabbitmq',
    });
  }
}
