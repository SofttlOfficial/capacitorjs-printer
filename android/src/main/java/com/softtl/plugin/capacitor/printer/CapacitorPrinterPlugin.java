package com.softtl.plugin.capacitor.printer;

import android.content.Context;
import android.print.PrintAttributes;
import android.print.PrintManager;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "CapacitorPrinter")
public class CapacitorPrinterPlugin extends Plugin {

    private CapacitorPrinter implementation = new CapacitorPrinter();

    @PluginMethod
    public void printHtml(PluginCall call) {

        String htmlContent = call.getString("value");

        if (htmlContent == null) {
            call.reject("HTML content is missing.");
            return;
        }

        getActivity().runOnUiThread(() -> {
            WebView webView = new WebView(getContext());
            webView.setWebViewClient(new WebViewClient() {
                @Override
                public void onPageFinished(WebView view, String url) {
                    PrintManager printManager = (PrintManager) getContext().getSystemService(Context.PRINT_SERVICE);
                    PrintAttributes.Builder builder = new PrintAttributes.Builder();
                    builder.setMediaSize(PrintAttributes.MediaSize.ISO_A4);
                    printManager.print("Document", view.createPrintDocumentAdapter(), builder.build());
                }
            });
            webView.loadDataWithBaseURL(null, htmlContent, "text/HTML", "UTF-8", null);
        });

        call.resolve();
    }


}
