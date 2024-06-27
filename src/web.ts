import { WebPlugin } from '@capacitor/core';

import type { CapacitorjsPrinterPlugin } from './definitions';

export class CapacitorjsPrinterWeb extends WebPlugin implements CapacitorjsPrinterPlugin {
  async printHtml(options: { value: string }): Promise<{ value: string }> {
    return options;
  }
}
