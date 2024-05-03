import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/model/chapter_model.dart';
import 'package:tyarineetki/model/subject_model.dart';
import 'package:tyarineetki/screens/subject_chapter/chapter_pdf_view/view_model/chapter_pdf_view_model.dart';
import 'package:tyarineetki/screens/subject_chapter/view_model/subject_chapter_view_model.dart';
import 'package:tyarineetki/widget/custom_text.dart';

import 'chapter_pdf_view/chapter_pdf_view_screen.dart';

class SubjectChapter extends StatefulWidget {
  const SubjectChapter({super.key, required this.data});

  final SubjectModelData data;

  @override
  State<SubjectChapter> createState() => _SubjectChapterState();
}

class _SubjectChapterState extends State<SubjectChapter> {
  late SubjectChapterViewModel viewModel;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    viewModel = context.watch<SubjectChapterViewModel>();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    viewModel.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomText(
          '${widget.data.label}',
          textType: TextType.Heading5Bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: mainView(),
    );
  }

  Widget mainView() {
    return Container(
      child: StreamBuilder(
          stream: viewModel.getChapterList(chapterId: widget.data.id!),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            if (snapshot.hasError) {
              return const Center(child: Text('No Data Found'));
            }

            if (!snapshot.hasData) {
              return const Center(child: Text('No Data Found'));
            }

            ChapterModel data = ChapterModel.fromJson(snapshot.data!.docs);

            if (data.data == null || data.data!.isEmpty) {
              return const Center(child: Text('No Data Found'));
            }

            return ListView.builder(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 16, bottom: 16),
                itemCount: data.data!.length,
                itemBuilder: (context, index) {
                  ChapterModelData item = data.data![index];
                  return itemCard(item);
                });
          }),
    );
  }

  Widget itemCard(ChapterModelData item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () {
          NavigationHelper().navigatePush(
              context: context,
              viewModel: ChapterPdfViewModel.argument(data: item),
              screen: const ChapterPdfViewScreen());
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.grey.shade200)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 4, right: 4, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey.shade300,
                    ),
                    child: Text('Chapter ${item.index}'),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.watch_later_outlined,
                    size: 14,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    '${item.totalTimeInMin} mins',
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                '${item.label}',
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '${item.description}',
                style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w300,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/pdf.png',
                    width: 20,
                    height: 20,
                  ),
                  const Spacer(),
                  Container(
                      constraints: const BoxConstraints(minWidth: 40),
                      padding: const EdgeInsets.only(
                          left: 4, right: 4, top: 2, bottom: 2),
                      decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        textAlign: TextAlign.center,
                        '\u{20B9}${item.itemPrice}',
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
