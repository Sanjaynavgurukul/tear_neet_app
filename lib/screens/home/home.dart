import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/main.dart';
import 'package:tyarineetki/model/banner_model.dart';
import 'package:tyarineetki/model/notes_model.dart';
import 'package:tyarineetki/model/paper_model.dart';
import 'package:tyarineetki/screens/exam_paper/exam_detail_screen.dart';
import 'package:tyarineetki/screens/exam_paper/view_model/exam_view_model.dart';
import 'package:tyarineetki/screens/home/view_model/home_view_model.dart';
import 'package:tyarineetki/screens/pdf_view/pdf_view_screen.dart';
import 'package:tyarineetki/screens/pdf_view/view_model/pdf_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';
import 'package:tyarineetki/widget/read_more.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // late StreamSubscription _paperListSubscription;
  late HomeViewModel viewModel;
  int activeIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<HomeViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<HomeViewModel>(
          builder: (context, viewModel, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                appBar(),
                Expanded(
                    child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      slider(),
                      const Gap(20),
                      paperSection(),
                      noteSection()
                    ],
                  ),
                ))
              ],
            );
          },
        ),
      ),
    );
  }

  Widget appBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${auth.currentUser!.displayName}',
                  style: const TextStyle(
                      color: AppColor.primaryOrangeColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Welcome to Tyari Jeet KI',
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                )
              ],
            ),
          ),
          CustomCacheImage(
              width: 50,
              height: 50,
              borderRadius: BorderRadius.circular(100),
              imageUrl: auth.currentUser!.photoURL)
        ],
      ),
    );
  }

  Widget paperSection() {
    return StreamBuilder(
        stream: viewModel.fetchPaperList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade400),
                        child: const Center(
                          child: CupertinoActivityIndicator(),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            );
          }

          if (snapshot.hasError) {
            return const SizedBox();
          }

          if (!snapshot.hasData) {
            return const SizedBox();
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              label(label: 'Choose Exam Paper'),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(snapshot.data!.size, (index) {
                      Map<String, dynamic> jso = snapshot.data!.docs[index]
                          .data() as Map<String, dynamic>;
                      PaperModel item = PaperModel.fromJson(
                          jso, snapshot.data!.docs[index].id);
                      return Container(
                        width: 200,
                        margin: const EdgeInsets.only(
                            right: 12, bottom: 12, top: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 0),
                                color: Colors.grey.shade300,
                                blurRadius: 2.0,
                              ),
                            ],
                            border: Border.all(
                                width: 1, color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      topLeft: Radius.circular(12)),
                                  color: AppColor.lightPrimaryOrangeColor),
                              child: Text(
                                '${item.paperTitle}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Time : ',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '${item.totalTime} minutes',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Questions : ',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '${item.totalQuestion}',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12, top: 12),
                              child: InkWell(
                                onTap: () {
                                  NavigationHelper().navigatePush(
                                      context: context,
                                      viewModel: ExamViewModel.detailArgument(
                                          data: item),
                                      screen: const ExamDetailPage());
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(12),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColor.primaryOrangeColor),
                                  child: const Text(
                                    "Start Test",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          );
        });
  }

  Widget noteSection() {
    return StreamBuilder(
        stream: viewModel.fetchNoteList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: List.generate(2, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade400),
                        child: const Center(
                          child: CupertinoActivityIndicator(),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            );
          }

          if (snapshot.hasError) {
            return const SizedBox();
          }

          if (!snapshot.hasData) {
            return const SizedBox();
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              label(label: 'Best Notes Ever'),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(snapshot.data!.size, (index) {
                    Map<String, dynamic> jso = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
                    NoteModel item = NoteModel.fromJson(jso);

                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 6),
                      child: InkWell(
                        onTap: () {
                          NavigationHelper().navigatePush(
                              context: context,
                              viewModel: PdfViewModel.argument(data: item),
                              screen: const PdfViewScreen());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 0),
                                  color: Colors.grey.shade300,
                                  blurRadius: 2.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColor.lightPrimaryOrangeColor),
                                padding: const EdgeInsets.all(8),
                                child: const Icon(
                                  Icons.note_alt_rounded,
                                  color: AppColor.primaryOrangeColor,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '${item.notesTitle}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  SizedBox(
                                    key: const Key('showMoreNotes'),
                                    child: ReadMoreText(
                                      '${item.notesDescription}',
                                      trimLines: 2,
                                      preDataText: "",
                                      preDataTextStyle: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                      style:
                                          const TextStyle(color: Colors.black),
                                      colorClickableText:
                                          AppColor.primaryOrangeColor,
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: ' See More',
                                      trimExpandedText: ' show less',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: item.isPaid ?? false
                                                ? AppColor.primaryOrangeColor
                                                : Colors.grey),
                                        padding: const EdgeInsets.only(
                                            left: 4, right: 4),
                                        child: Text(
                                          item.isPaid ?? false
                                              ? 'PREMIUM'
                                              : "FREE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: item.isPaid!
                                                  ? Colors.white
                                                  : Colors.white),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      if (item.isPaid!)
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: Colors.green),
                                          padding: const EdgeInsets.only(
                                              left: 4, right: 4),
                                          child: const Text(
                                            'PURCHASED',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        )
                                    ],
                                  ),
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          );
        });
  }

  Widget label({required String label, bool wantPadding = true}) {
    return Padding(
      padding: !wantPadding
          ? EdgeInsets.zero
          : const EdgeInsets.only(left: 16, right: 16),
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
      ),
    );
  }

  Widget slider() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StreamBuilder(
            stream: viewModel.fetchBannerImage(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.none ||
                  snapshot.connectionState == ConnectionState.waiting) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 200,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade400),
                    child: const Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  ),
                );
              }
              if (snapshot.hasError) {
                return const SizedBox();
              }

              if (!snapshot.hasData) {
                return const SizedBox();
              }

              BannerModel item = BannerModel.fromJson(
                  snapshot.data!.data() as Map<String, dynamic>);
              if (item.data == null || item.data!.isEmpty) {
                return const SizedBox();
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 16, bottom: 12),
                      child: label(label: 'Announcement', wantPadding: false)),
                  CarouselSlider(
                    items: List.generate(item.data!.length, (index) {
                      BannerModelData jso = item.data![index];
                      return InkWell(
                        onTap: jso.ctaType == null || jso.ctaType!.isEmpty
                            ? null
                            : () {
                                if (jso.ctaType == "note") {
                                  NoteModel noteModel = NoteModel(
                                      notesTitle: jso.label,
                                      noteUrl: jso.pdfLink);
                                  NavigationHelper().navigatePush(
                                      context: context,
                                      viewModel: PdfViewModel.argument(
                                          data: noteModel),
                                      screen: const PdfViewScreen());
                                  return;
                                }

                              },
                        child: CustomCacheImage(
                          imageUrl: jso.image,
                          height: 210,
                        ),
                      );
                    }),
                    options: CarouselOptions(
                      viewportFraction: 0.96,
                      height: 220.0,
                      autoPlay: true,
                      autoPlayInterval: const Duration(
                        seconds: 3,
                      ),
                      enlargeCenterPage: true,
                    ),
                  )
                ],
              );
            }),
      ],
    );
  }
}
