import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/helper/utils.dart';
import 'package:tyarineetki/model/chapter_model.dart';
import 'package:tyarineetki/model/subject_model.dart';
import 'package:tyarineetki/screens/subject_chapter/chapter_pdf_view/view_model/chapter_pdf_view_model.dart';
import 'package:tyarineetki/screens/subject_chapter/view_model/subject_chapter_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_text.dart';

import 'chapter_pdf_view/chapter_pdf_view_screen.dart';

class SubjectChapter extends StatefulWidget {
  const SubjectChapter({super.key, required this.data});

  final SubjectModelData data;

  @override
  State<SubjectChapter> createState() => _SubjectChapterState();
}

class _SubjectChapterState extends State<SubjectChapter>
    with TickerProviderStateMixin {
  late SubjectChapterViewModel viewModel;
  late final TabController _tabController;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    viewModel = context.watch<SubjectChapterViewModel>();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.data.subject_type!.isNotEmpty) {
        _tabController = TabController(
            length: widget.data.subject_type!.length, vsync: this);
        viewModel.updateHasType(
            type: widget.data.subject_type![0].type ?? '', hasTypeList: true);
      } else {
        viewModel.updateHasType(type: '', hasTypeList: false);
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    viewModel.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (viewModel.hasTypes == null) {
      return Material(child: Center(child: CupertinoActivityIndicator(),));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lightPrimaryOrangeColor,
        title: CustomText(
          '${widget.data.label}',
          textType: TextType.Heading5Bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        bottom: widget.data.subject_type!.isEmpty
            ? null
            : TabBar(
          labelColor: Colors.black,
          indicatorColor: AppColor.primaryOrangeColor,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          controller: _tabController,
          onTap: (int index) {
            viewModel.updateType(
                type: widget.data.subject_type![index].type ?? '');
          },
          tabs: List.generate(widget.data.subject_type!.length, (index) {
            SubjectTypeModel item = widget.data.subject_type![index];
            return Tab(
              text: item.label,
            );
          }),
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

            List<ChapterModelData> filterList = viewModel.filterList(data);
            if (filterList.isEmpty) {
              return const Center(child: Text('No Data Found'));
            }
            return ListView.builder(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 16, bottom: 16),
                itemCount: filterList.length,
                itemBuilder: (context, index) {
                  ChapterModelData item = filterList[index];
                  return itemCard(item);
                });
          }),
    );
  }

  void openPDF(ChapterModelData item) {
    NavigationHelper().navigatePush(
        context: context,
        viewModel: ChapterPdfViewModel.argument(data: item),
        screen: const ChapterPdfViewScreen());
  }

  Future<bool?> showWarningDialog(
      {required BuildContext context,
        String? message,
        String? deniedActionLabel,
        bool ageWarning = false,
        String? grantActionLabel}) async {

    return showDialog<bool?>(
      context: context,
      barrierDismissible: false, // Prevent dialog dismissal on tap outside.
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  message ?? 'Warning',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                          onTap: () => Navigator.pop(context, false),
                          child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.grey.shade100),
                              child:  Text(
                                deniedActionLabel??'Cancel',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ))),
                    ),const SizedBox(width: 12,),
                    Expanded(
                      child: InkWell(
                          onTap: () => Navigator.pop(context, true),
                          child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColor.primaryOrangeColor),
                              child:  Text(
                                grantActionLabel??'Purchase',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ))),
                    ),


                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget itemCard(ChapterModelData item) {
    bool isPurchased = item.isPaid! ? util.purchased() : false;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () async {
          if (!item.isPaid!) {
            openPDF(item);
            return;
          }

          if (!isPurchased) {
            bool? status = await showWarningDialog(context: context,
                message: 'This is premium content. To access you need to purchase subscription');

            if(status !=  null && status){
              viewModel.showToast(message: 'Purchase', context: context);
            }
            return;
          }
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
                  const SizedBox(
                    width: 6,
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
                  item.isPaid! && !isPurchased
                      ? Container(
                      padding: const EdgeInsets.only(
                          left: 4, right: 4, top: 2, bottom: 2),
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4)),
                      child:Row(
                        children: [
                          Image.asset("assets/crown.png",width: 20,height: 24,),
                          const SizedBox(width: 4,),
                          const Text(
                            textAlign: TextAlign.center,
                            'PREMIUM',
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ))
                      : SizedBox()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
