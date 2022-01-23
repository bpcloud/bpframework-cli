'use strict';

/**
 * Copyright (c) 2020 Copyright bp All Rights Reserved.
 */

import { Type } from '@bpframework/validation';

export class DemoBean {
  @Type.Number()
  a: number = 1;

  @Type.String()
  b: string;
}

/**
 * @desc: request body bean.
 */
export class DemoBodyBean {
  @Type.Validator({
    checkCB(elem: any) {
      if (!elem || typeof elem.a !== 'number' || typeof elem.b !== 'number')
        return false;
    },
  })
  pt: { a: number; b: number };

  @Type.Array({
    checkCB(elem: any, index: number, arr: any[]) {
      if (arr.length < 2 || !elem) {
        return false;
      }
      if (typeof elem.a != 'number' || typeof elem.b != 'number') {
        return false;
      }
    },
  })
  polygon: { a: number; b: number }[];
}
