'use strict';

/**
* Copyright (c) 2020 Copyright bp All Rights Reserved.
*/

import * as koa from 'koa';
import { Autowired, PathVariable, RequestBody, RequestMapping, RequestMethod, RequestParam, RestController, RestObject, RestObjectTypeRest } from "bpframework";
import { BeanDemo } from "./DemoBean";
import { DemoFeignClient } from '@/feignclients/DemoFeignClient';

@RestController()
class DemoController {

  // Autowired.
  @Autowired(DemoFeignClient)
  private demoFeignClient: DemoFeignClient;

  /**
   * 对/api的请求.
   */
  @RequestMapping({ path: '/api/{a}/{b}', method: RequestMethod.POST, dataType:String })
  async request(
    @PathVariable({ name: "a", required: true }) a: string,
    @PathVariable({ name: "b", required: false }) b: string,
    @RequestParam({ name: "b", required: false, }) c: string,
    @RequestBody body:string,
    @RestObject obj:RestObjectTypeRest<koa.Context>,  // or RestObjectType
  ): Promise<BeanDemo> {

    await this.demoFeignClient.request('xx');

    console.log(a, b, c, body, obj);
    let ret = new BeanDemo();
    ret.a = Number(a);
    ret.b = b;
    return ret;
  }
}
