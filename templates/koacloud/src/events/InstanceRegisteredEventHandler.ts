'use strict';

/**
 * Copyright (c) 2020 Copyright bp All Rights Reserved.
 */

import {
  Service,
  InstanceRegisteredEvent,
  InstanceRegisteredEventListener,
} from 'bpframework';

@Service()
class InstanceRegisteredEventHandler {
  /**
   * Instance registered event.
   * @param ev
   */
  @InstanceRegisteredEventListener
  async onInstanceRegistered(ev: InstanceRegisteredEvent) {}
}
