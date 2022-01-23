'use strict';

/**
 * Copyright (c) 2022 bpframework Co.,Ltd. All Rights Reserved.
 * Author: brian.li
 * Date: 2022-01-23 16:27
 * Desc:
 */

import { Autowired, Service } from 'bpframework';
import { IDemoService } from '../IDemoService';

@Service()
class DemoService implements IDemoService {
  foo(): string {
    return 'foo';
  }
}
