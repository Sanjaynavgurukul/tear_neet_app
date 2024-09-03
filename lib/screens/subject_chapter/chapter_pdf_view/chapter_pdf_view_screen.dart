import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tyarineetki/helper/dialog_helper.dart';
import 'package:tyarineetki/theme/app_color.dart';

import 'view_model/chapter_pdf_view_model.dart';

class ChapterPdfViewScreen extends StatefulWidget {
  const ChapterPdfViewScreen({super.key});

  @override
  State<ChapterPdfViewScreen> createState() => _ChapterPdfViewScreenState();
}

class _ChapterPdfViewScreenState extends State<ChapterPdfViewScreen> {
  late ChapterPdfViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<ChapterPdfViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return mainView();
    return Scaffold(
      appBar: AppBar(),
      body: mainView(),
    );
  }

  Widget mainView() {

    if (viewModel.data == null) {
      return const Material(
        color: Colors.white,
        child: Center(
          child: Text('No Note Found'),
        ),
      );
    }
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  DialogHelper().showPdfIfoDialod(
                      context: context,
                      message: viewModel.data!.label,
                      description: viewModel.data!.description);
                },
                icon: const Icon(Icons.info))
          ],
          backgroundColor: AppColor.lightPrimaryOrangeColor,
          elevation: 0,
          title: Text('${viewModel.data!.label}'),
        ),
        body: SfPdfViewer.network(viewModel.data!.pdfLink ?? ''));
  }
}
