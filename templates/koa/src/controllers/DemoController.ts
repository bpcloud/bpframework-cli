'use strict';

/**
 * Copyright (c) 2020 Copyright bp All Rights Reserved.
 */

import * as koa from 'koa';
import {
  Autowired,
  PathVariable,
  RequestBody,
  RequestMapping,
  RequestMethod,
  RequestParam,
  RestController,
  RestObject,
  RestObjectTypeRest,
} from 'bpframework';
import { DemoBean, DemoBean2, DemoBodyBean } from './DemoBean';
import { IDemoService } from '@/services/IDemoService';

@RestController()
class DemoController {
  // Autowired.
  @Autowired('DemoService')
  private demoService: IDemoService;

  /**
   * 对/api的请求.
   */
  @RequestMapping({ path: '/api/{a}/{b}', method: RequestMethod.POST })
  async request(
    @PathVariable({ name: 'a', required: true }) a: string,
    @PathVariable({ name: 'b', required: false }) b: string,
    @RequestParam({ name: 'b', required: false, castType: Number }) c: number,
    @RequestBody body: string,
    @RestObject obj: RestObjectTypeRest<koa.Context> // or RestObjectType
  ): Promise<DemoBean> {
    console.log(a, b, c, body);
    let ret = new DemoBean();
    ret.a = Number(a);
    ret.b = b;
    ret.bean2 = new DemoBean2();
    ret.bean2.a = 1;
    console.log(ret.a, ret.b);
    return ret;
  }

  /**
   * post请求.
   */
  @RequestMapping({
    path: '/api/test',
    method: RequestMethod.POST,
  })
  async testPost(
    @RequestBody({ required: true, castType: DemoBodyBean }) data: DemoBodyBean
  ): Promise<any> {
    // data.pt.a

    return {
      ok: true,
    };
  }
}
