'use strict';

/**
 * Copyright (c) 2022 bpframework Co.,Ltd. All Rights Reserved.
 * Author: brian.li
 * Date: 2022-01-24 18:54
 * Desc:
 */

import { DBTemplate, IDBTemplate } from '@bpframework/middleware-db';
import { Bean, Service } from 'bpframework';

@Service()
class DatabaseConfigure {
  @Bean()
  dbTemplate(): IDBTemplate {
    return new DBTemplate();
  }
}
