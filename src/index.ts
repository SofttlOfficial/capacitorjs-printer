import { registerPlugin } from '@capacitor/core';

import type { CapacitorjsPrinterPlugin } from './definitions';

const CapacitorjsPrinter = registerPlugin<CapacitorjsPrinterPlugin>('CapacitorjsPrinter', {
  web: () => import('./web').then(m => new m.CapacitorjsPrinterWeb()),
});

export * from './definitions';
export { CapacitorjsPrinter };
