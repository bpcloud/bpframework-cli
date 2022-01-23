'use strict';

/**
 * Copyright (c) 2022 bpframework Co.,Ltd. All Rights Reserved.
 * Author: brian.li
 * Date: 2022-01-23 16:27
 * Desc:
 */

import { Autowired, Service } from 'bpframework';
import { IDemoService } from '../IDemoService';
import { Table1Mapper } from '@/mappers/Table1Mapper';
import { IDBTemplate } from '@bpframework/middleware-db';

@Service()
class DemoService implements IDemoService {
  /**
   * autowired db template.
   */
  @Autowired('dbTemplate')
  dbTemplate: IDBTemplate;

  foo(): string {
    return 'foo';
  }

  /**
   * 测试数据库。
   */
  async testDatabaseMapper(): Promise<void> {
    // get mapper.
    let mapper: Table1Mapper = this.dbTemplate.getMapper(
      Table1Mapper
    ) as Table1Mapper;

    // query.
    await mapper.select('1=1');
  }
}
