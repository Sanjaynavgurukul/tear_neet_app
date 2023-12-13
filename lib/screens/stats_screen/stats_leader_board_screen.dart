import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/model/leaders_model.dart';
import 'package:tyarineetki/screens/stats_screen/view_model/leaderboard_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class StatsLeaderBoardScreen extends StatefulWidget {
  const StatsLeaderBoardScreen({super.key});

  @override
  State<StatsLeaderBoardScreen> createState() => _StatsLeaderBoardScreenState();
}

class _StatsLeaderBoardScreenState extends State<StatsLeaderBoardScreen> {
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
    if (viewModel.data == null) {
      return const Material(
        color: Colors.black,
        child: Text('No Profile Found'),
      );
    }

    return StreamBuilder(
        stream: viewModel.fetchLeads(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
            return const Material(
              color: Colors.white,
              child: Center(
                child: CupertinoActivityIndicator(),
              ),
            );
          }

          if (snapshot.hasError) {
            return const Material(
              color: Colors.white,
              child: SizedBox(
                child: Center(
                  child: Text('No Data Found'),
                ),
              ),
            );
          }

          if (!snapshot.hasData) {
            return const Material(
              color: Colors.white,
              child: SizedBox(
                child: Center(
                  child: Text('No Data Found'),
                ),
              ),
            );
          }

          if (snapshot.data!.size == 0) {
            return const Material(
              color: Colors.white,
              child: SizedBox(
                child: Center(
                  child: Text('No Data Found'),
                ),
              ),
            );
          }

          return Scaffold(
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {
            //     FirebaseFirestore.instance
            //         .collection('leaderboard')
            //         .doc(viewModel.data!.id)
            //         .collection('leadData')
            //         .add({
            //       'image': '',
            //       'score': 433,
            //       'number': '8851134245',
            //       'name': 'Sanjay Jana',
            //       'userId': '${util.userId}',
            //       'time': FieldValue.serverTimestamp()
            //     });
            //   },
            //   child: const Icon(Icons.add),
            // ),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColor.lightPrimaryOrangeColor,
              title: Text('${viewModel.data!.label}'),
            ),
            body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(snapshot.data!.size, (index) {
                        Map<String, dynamic> jso = snapshot.data!.docs[index]
                            .data() as Map<String, dynamic>;
                        LeaderModel item = LeaderModel.fromJson(jso);

                        if (index == 0) return king(item: item);
                        if (index == 1) {
                          return otherKing(item: item, rank: '2', position: 2);
                        }
                        if (index == 2) {
                          return otherKing(item: item, rank: '3', position: 3);
                        }

                        return otherRankList(item: item, position: index + 1);
                      }),
                    ),
                  )),
            ),
          );
        });
  }

  Widget king({required LeaderModel item}) {
    double width = MediaQuery.of(context).size.width / 3;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: const EdgeInsets.only(right: 16),
        child: Row(
          children: [
            imageView(item),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item.name}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '+91-${item.number}',
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 4, right: 4, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(4)),
                  child: const Text(
                    'First Position',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
            const SizedBox(
              width: 4,
            ),
            Column(
              children: [
                Lottie.asset('assets/crow.json', height: 30),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  '${4}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget otherKing(
      {required LeaderModel item,
      required String rank,
      required int position}) {
    double width = MediaQuery.of(context).size.width / 4;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: const EdgeInsets.only(right: 16),
        child: Row(
          children: [
            imageView(item),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item.name}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '+91-${item.number}',
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 4, right: 4, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    '${position == 2 ? "Second" : "Third"} Position',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
            const SizedBox(
              width: 4,
            ),
            const Column(
              children: [
                Icon(
                  Icons.stacked_bar_chart,
                  color: AppColor.primaryOrangeColor,
                  size: 20,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '${4}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget otherRankList({required LeaderModel item, required int position}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: const EdgeInsets.only(right: 16),
        child: Row(
          children: [
            imageView(item),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item.name}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '+91-${item.number}',
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 4, right: 4, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    '$position Position',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
            const SizedBox(
              width: 4,
            ),
            const Column(
              children: [
                Icon(
                  Icons.stacked_bar_chart,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '${4}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageView(LeaderModel item) {
    if (item.image == null || item.image!.isNotEmpty) {
      return CustomCacheImage(
          width: 60,
          height: 60,
          borderRadius: BorderRadius.circular(100),
          imageUrl: '${item.image}');
    }
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        item.name!.substring(0, 2).toUpperCase(),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
