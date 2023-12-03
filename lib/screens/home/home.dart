import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/main.dart';
import 'package:tyarineetki/model/banner_model.dart';
import 'package:tyarineetki/model/notes_model.dart';
import 'package:tyarineetki/model/paper_model.dart';
import 'package:tyarineetki/screens/home/view_model/home_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              appBar(),
              slider(),
              const Gap(20),
              paperSection(),
              noteSection()
              // bookSection(),
              // const Gap(20),
              // testSection()
            ],
          ),
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
                  style: TextStyle(
                      color: AppColor.primaryOrangeColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),
                SizedBox(
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
              imageUrl: auth!.currentUser!.photoURL)
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
                      PaperModel item = PaperModel.fromJson(jso);
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SizedBox(
                          height: 200,
                          width: 140,
                          child: Stack(
                            children: [
                              CustomCacheImage(
                                  height: 200,
                                  width: 140,
                                  imageUrl: item.coverImage),
                              const Positioned(
                                top: 4,
                                right: 12,
                                child: Icon(
                                  Icons.arrow_right_alt,
                                  color: Colors.white,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, right: 12, bottom: 12),
                                    child: Text(
                                      '${item.paperTitle}',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                            ],
                          ),
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
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(snapshot.data!.size, (index) {
                      Map<String, dynamic> jso = snapshot.data!.docs[index]
                          .data() as Map<String, dynamic>;
                      NoteModel item = NoteModel.fromJson(jso);
                      return Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 10, bottom: 10),
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: AppColor.greenBGColor)),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Text(
                                '${item.notesTitle}',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Text('${item.notesDescription}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
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

              BannerModel item = BannerModel.fromJson(snapshot.data!.data() as Map<String,dynamic>);
              if(item.data == null || item.data!.isEmpty){
                return SizedBox();
              }
              return CarouselSlider(
                items: List.generate(item.data!.length, (index) {

                  BannerModelData jso = item.data![index];
                  return CustomCacheImage(
                    imageUrl: jso.image,
                    height: 190,
                  );
                }),
                options: CarouselOptions(
                  height: 190.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(
                    seconds: 3,
                  ),
                  enlargeCenterPage: true,
                ),
              );
            }),
      ],
    );
  }
}
