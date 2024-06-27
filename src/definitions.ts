export interface CapacitorPrinterPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
