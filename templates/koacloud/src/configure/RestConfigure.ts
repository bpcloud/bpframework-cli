'use strict';

/**
 * Copyright (c) 2020 Copyright bp All Rights Reserved.
 */

import {
  RestRequest,
  RestResponse,
  Service,
  RestControllerConfigure,
  RestControllerConfigureInfo,
  RestControllerResponseData,
  Application,
  getErrorMessage,
} from 'bpframework';
import * as febs from 'febs';

@Service()
class RestConfigure {
  @RestControllerConfigure
  onConfigure(): RestControllerConfigureInfo {
    return {
      // 默认headers.
      defaultHeaders: { 'content-type': 'application/json;charset=utf-8' },
      // 消息过滤.
      filterResponseCallback: (data: RestControllerResponseData): any => {
        return data.returnMessage;
      },
      /** 接收消息时发生数据类型等错误. */
      errorRequestCallback: (
        error: Error,
        request: RestRequest,
        response: RestResponse
      ): void => {
        getLogger().error(getErrorMessage(error));
      },
      /** 响应消息时发生错误. */
      errorResponseCallback: (
        error: Error,
        request: RestRequest,
        response: RestResponse
      ): void => {
        getLogger().error(getErrorMessage(error));

        //
        // febs.exception.
        if (febs.exception.isInstance(error)) {
          // network error.
          if (error.code === 'NetworkFailed') {
          }
          // network timeout
          else if (error.code === 'NetworkTimeout') {
          } else {
          }
        }
      },
      /** 404. */
      notFoundCallback: (
        request: RestRequest,
        response: RestResponse
      ): void => {
        getLogger().error('404');
        response.body = '404';
      },
    }; //
  }
}
