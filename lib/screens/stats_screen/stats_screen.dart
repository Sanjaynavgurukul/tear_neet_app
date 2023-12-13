import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/model/leaderboard_list_model.dart';
import 'package:tyarineetki/screens/stats_screen/stats_leader_board_screen.dart';
import 'package:tyarineetki/screens/stats_screen/view_model/leaderboard_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  late LeaderBoardViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<LeaderBoardViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [appBar(), const Gap(20), mainView()],
        ),
      ),
    );
  }

  Widget appBar() {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Leaderboard',
                  style: TextStyle(
                      color: AppColor.primaryOrangeColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Check you exam Score',
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget mainView() {
    return Expanded(
        child: SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: mainList(),
    ));
  }

  Widget mainList() {
    return StreamBuilder(
        stream: viewModel.fetchLeaderBoardList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }

          if (snapshot.hasError) {
            return const SizedBox();
          }

          if (!snapshot.hasData) {
            return const SizedBox();
          }

          return SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(snapshot.data!.size, (index) {
                Map<String, dynamic> jso =
                    snapshot.data!.docs[index].data() as Map<String, dynamic>;
                LeaderBoardListModel item = LeaderBoardListModel.fromJson(jso,
                    docId: snapshot.data!.docs[index].id);
                return itemView(item);
              }),
            ),
          );
        });
  }

  Widget itemView(LeaderBoardListModel item) {
    return InkWell(
      onTap: () {
        NavigationHelper().navigatePush(
            context: context,
            viewModel: LeaderBoardViewModel.argument(data: item),
            screen: const StatsLeaderBoardScreen());
      },
      child: Container(
        height: 120,
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 12),
        child: Stack(
          children: [
            CustomCacheImage(imageUrl: item.coverImage),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${item.label}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      '${item.description}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                    const Spacer(),
                    if (item.userList != null && item.userList!.isNotEmpty)
                      Stack(
                        children: List.generate(item.userList!.length, (index) {
                          String i = item.userList![index]
                              .substring(0, 2)
                              .toUpperCase();
                          if (index == 0) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.purple),
                                  child: Center(
                                    child: Text(
                                      '${i}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )),
                            );
                          }

                          if (index == 1) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.orange),
                                child: Center(
                                  child: Text(
                                    '${i}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }

                          if (index == 2) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColor.primaryOrangeColor),
                                  child: Center(
                                    child: Text(
                                      '${i}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )),
                            );
                          }

                          return const SizedBox();
                        }),
                      )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
