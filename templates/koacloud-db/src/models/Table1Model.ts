'use strict';

/**
 * Copyright (c) 2022 bpframework Co.,Ltd. All Rights Reserved.
 * Author: brian.li
 * Date: 2022-01-24 18:51
 * Desc:
 */

import { Column, Table } from '@bpframework/middleware-db';
import { dataType } from 'febs-db';

/**
 * table model
 */
@Table('tablename')
export class Table1Model {
  @Column({ type: dataType.Char(32), primaryKey: true })
  id: string;

  @Column({ type: dataType.VarChar(64) })
  col1: string;

  @Column({ type: dataType.Bit() })
  col2: boolean;
}
