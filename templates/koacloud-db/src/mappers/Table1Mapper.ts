'use strict';

/**
 * Copyright (c) 2022 bpframework Co.,Ltd. All Rights Reserved.
 * Author: brian.li
 * Date: 2022-01-24 18:53
 * Desc:
 */

import { BaseMapper, IBaseMapper } from '@bpframework/middleware-db';
import { Table1Model } from '@/models/Table1Model';

/**
 * table mapper
 */
export class Table1Mapper
  extends BaseMapper<Table1Model>
  implements IBaseMapper
{
  /** Must have this static member */
  static Model = Table1Model;

  /**
   * @desc 查询col1=A的结果.
   */
  async selectCol1EqA(): Promise<Table1Model[]> {
    let where = this.condition.equal('col1', 'A');
    return this.select(where);
  }
}
