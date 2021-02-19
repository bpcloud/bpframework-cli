'use strict';

import { BpApplication, Application, LogLevel } from 'bpframework';
import './configure';
import './events';
import './controllers';
import './crons';

// use koa.
import * as koajs from './utils/koajs';
import {logger} from './utils/logger';

@BpApplication()
class App {
  /**
  * @desc main entry.
  */
  main() {
    Application.runKoa({
      logger,
      logLevel: LogLevel.DEBUG,
      enableScheduled: !!(global as any).enableScheduled,
      app: koajs.createApp(),
    });
  }
}