'use strict';

/**
* Copyright (c) 2020 Copyright bp All Rights Reserved.
*/

import * as koa from 'koa';
import { PathVariable, RequestBody, RequestMapping, RequestMethod, RequestParam, RestController, RestObject, RestObjectTypeRest } from "bpframework";
import { DemoBean, DemoBodyBean } from "./DemoBean";
import { logger } from "@/libs/logger";
import { IDemoService } from "@/services/IDemoService";

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
    @PathVariable({ name: "a", required: true }) a: string,
    @PathVariable({ name: "b", required: false }) b: string,
    @RequestParam({ name: "b", required: false, castType: Number }) c: number,
    @RequestBody body:string,
    @RestObject obj:RestObjectTypeRest<koa.Context>,  // or RestObjectType
  ): Promise<DemoBean> {
    logger.info(a + b + c + body + obj);
    let ret = new DemoBean();
    ret.a = Number(a);
    ret.b = b;
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
