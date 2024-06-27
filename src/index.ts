import { registerPlugin } from '@capacitor/core';

import type { CapacitorPrinterPlugin } from './definitions';

const CapacitorPrinter = registerPlugin<CapacitorPrinterPlugin>('CapacitorPrinter', {
  web: () => import('./web').then(m => new m.CapacitorPrinterWeb()),
});

export * from './definitions';
export { CapacitorPrinter };
