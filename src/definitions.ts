export interface CapacitorjsPrinterPlugin {
  printHtml(options: { value: string }): Promise<{ value: string }>;
}
