import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tyarineetki/helper/dialog_helper.dart';
import 'package:tyarineetki/screens/pdf_view/view_model/pdf_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PdfViewScreen extends StatefulWidget {
  const PdfViewScreen({super.key});

  @override
  State<PdfViewScreen> createState() => _PdfViewScreenState();
}

class _PdfViewScreenState extends State<PdfViewScreen> {
  late PdfViewModel viewModel;
  late WebViewController controller;
  bool loading = true;

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((callback){
      controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Update loading bar.
            },
            onPageStarted: (String url) {
            },
            onPageFinished: (String url) {
              setState(() {
                loading = false;
              });
            },
            onHttpError: (HttpResponseError error) {},
            onWebResourceError: (WebResourceError error) {},
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(
            'https://www.canva.com/design/DAGKbSP19eQ/NB3mX6SOAnQ6cie5lrEQrA/view?embed'));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<PdfViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // statusBarColor: Styles.greyBGColor, // transparent status bar
        statusBarColor: Colors.white, // transparent status bar
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: mainView()
      ),
    );
  }

  Widget mainView(){
    if(loading){
      return const Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CupertinoActivityIndicator(),
          const SizedBox(height: 8,),
          Text('Loading',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
        ],
      ),);
    }
    return WebViewWidget(controller: controller);
  }
}
