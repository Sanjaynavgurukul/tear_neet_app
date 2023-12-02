import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/screens/paper_stats_screen/paper_stats_screen.dart';
import 'package:tyarineetki/screens/paper_stats_screen/view_model/paper_stats_view_model.dart';
import 'package:tyarineetki/screens/stats_screen/stats_leader_board_screen.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stats Screen")),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(20, (index) {
            return Padding(
              padding: const EdgeInsets.only(left:16,right: 16,top: 10,bottom: 10),
              child: Container(
                  padding: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius:  BorderRadius.circular(
                        20
                      ),
                      border:
                          Border.all(width: 1, color: Colors.grey.shade300)),
                  child: ListTile(
                    onTap: () {
                      NavigationHelper().normalNavigatePush(
                          context: context,
                          screen: const StatsLeaderBoardScreen());
                    },
                    leading: CustomCacheImage(
                        width: 60,
                        height: 60,
                        borderRadius: BorderRadius.circular(100),
                        imageUrl:
                            'https://play-lh.googleusercontent.com/0SAFn-mRhhDjQNYU46ZwA7tz0xmRiQG4ZuZmuwU8lYmqj6zEpnqsee_6QDuhQ4ZofwXj=w240-h480-rw'),
                    title: const Text(
                      'Byjus',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                      'Mumbai',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal),
                    ),
                  )
                  // Row(
                  //   children: [
                  //     CustomCacheImage(
                  //         width: 60,
                  //         height: 60,
                  //         borderRadius: BorderRadius.circular(100),
                  //         imageUrl:
                  //             'https://play-lh.googleusercontent.com/0SAFn-mRhhDjQNYU46ZwA7tz0xmRiQG4ZuZmuwU8lYmqj6zEpnqsee_6QDuhQ4ZofwXj=w240-h480-rw'),
                  //     const SizedBox(
                  //       width: 12,
                  //     ),
                  //     const Expanded(
                  //         child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text(
                  //           'Sanjay Jana',
                  //           style: TextStyle(
                  //               fontSize: 16, fontWeight: FontWeight.w600),
                  //         ),
                  //         SizedBox(
                  //           height: 4,
                  //         ),
                  //         Text(
                  //           '+9-8765674653',
                  //           style: TextStyle(
                  //               fontSize: 12, fontWeight: FontWeight.normal),
                  //         )
                  //       ],
                  //     )),
                  //     const SizedBox(
                  //       width: 4,
                  //     ),
                  //     Column(
                  //       children: [
                  //         Icon(
                  //           Icons.leaderboard,
                  //           size: 16,
                  //           color: AppColor.primaryOrangeColor.withOpacity(0.6),
                  //         ),
                  //         const SizedBox(
                  //           height: 4,
                  //         ),
                  //         Text(
                  //           '${index + 4}',
                  //           style: const TextStyle(fontWeight: FontWeight.bold),
                  //         )
                  //       ],
                  //     )
                  //   ],
                  // ),
                  ),
            );
          }),
        ),
      ),
    );
  }
}
