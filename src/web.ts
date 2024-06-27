import { WebPlugin } from '@capacitor/core';

import type { CapacitorPrinterPlugin } from './definitions';

export class CapacitorPrinterWeb extends WebPlugin implements CapacitorPrinterPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
