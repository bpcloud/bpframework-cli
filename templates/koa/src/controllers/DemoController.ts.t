'use strict';

/**
* Copyright (c) 2020 Copyright bp All Rights Reserved.
*/

import * as koa from 'koa';
import { PathVariable, RequestBody, RequestMapping, RequestMethod, RequestParam, RestController, RestObject, RestObjectTypeRest } from "bpframework";
import { BeanDemo } from "./DemoBean";

@RestController()
class DemoController {

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
  ): Promise<BeanDemo> {
    console.log(a, b, c, body, obj);
    let ret = new BeanDemo();
    ret.a = Number(a);
    ret.b = b;
    return ret;
  }
}
