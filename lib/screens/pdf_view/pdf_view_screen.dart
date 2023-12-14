import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tyarineetki/helper/dialog_helper.dart';
import 'package:tyarineetki/screens/pdf_view/view_model/pdf_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';

class PdfViewScreen extends StatefulWidget {
  const PdfViewScreen({super.key});

  @override
  State<PdfViewScreen> createState() => _PdfViewScreenState();
}

class _PdfViewScreenState extends State<PdfViewScreen> {
  late PdfViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<PdfViewModel>();
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
                      message: viewModel.data!.notesTitle,
                      description: viewModel.data!.notesDescription);
                },
                icon: const Icon(Icons.info))
          ],
          backgroundColor: AppColor.lightPrimaryOrangeColor,
          elevation: 0,
          title: Text('${viewModel.data!.notesTitle}'),
        ),
        body: SfPdfViewer.network(viewModel.data!.noteUrl ?? ''));
  }
}
