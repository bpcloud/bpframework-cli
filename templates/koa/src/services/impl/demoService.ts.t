import { Service } from "bpframework";
import { IDemoService } from "../IDemoService";

@Service('DemoService')
class DemoService implements IDemoService {
  foo(): string {
    return 'foo';
  }
}