import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/screens/paper_stats_screen/view_model/paper_stats_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class PaperStatsScreen extends StatefulWidget {
  const PaperStatsScreen({super.key});

  @override
  State<PaperStatsScreen> createState() => _PaperStatsScreenState();
}

class _PaperStatsScreenState extends State<PaperStatsScreen> {
  late PaperStatsViewModel viewModel;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //Initializing required View model :D
    viewModel = context.watch<PaperStatsViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   colors: [
            //     AppColor.primaryOrangeColor,
            //     Colors.white
            //   ]
            // )
            ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [otherKing(rank: '2'), king(), otherKing(rank: '3')],
              ),
              otherRankList()
            ],
          ),
        ),
      ),
    );
  }

  Widget king() {
    double width = MediaQuery.of(context).size.width / 3;

    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/crow.json', height: 100),
          Container(
            width: width,
            alignment: Alignment.center,
            height: width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColor.primaryOrangeColor.withOpacity(0.5),
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                )
              ],
              borderRadius: BorderRadius.circular(100),
            ),
            child: Stack(
              children: [
                CustomCacheImage(
                    width: width,
                    height: width,
                    border: Border.all(
                        width: 3, color: AppColor.primaryOrangeColor),
                    showBorder: true,
                    borderRadius: BorderRadius.circular(100),
                    imageUrl:
                        'https://image.lexica.art/full_jpg/7515495b-982d-44d2-9931-5a8bbbf27532')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget otherKing({required String rank}) {
    double width = MediaQuery.of(context).size.width / 4;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          rank,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          rank == '2'
              ? Icons.arrow_drop_up_rounded
              : Icons.arrow_drop_down_rounded,
          size: 50,
          color: rank == '2' ? AppColor.primaryOrangeColor : Colors.black,
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          width: width,
          alignment: Alignment.center,
          height: width,
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.green.withOpacity(0.5),
            //     blurRadius: 15.0, // soften the shadow
            //     spreadRadius: 5.0, //extend the shadow
            //   )
            // ],
            borderRadius: BorderRadius.circular(100),
          ),
          child: Stack(
            children: [
              CustomCacheImage(
                  width: width,
                  height: width,
                  border: Border.all(width: 3, color: Colors.green),
                  showBorder: true,
                  borderRadius: BorderRadius.circular(100),
                  imageUrl:
                      'https://image.lexica.art/full_jpg/7515495b-982d-44d2-9931-5a8bbbf27532')
            ],
          ),
        )
      ],
    );
  }

  Widget otherRankList() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
      child: Column(
        children: List.generate(20, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              padding: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    topLeft: Radius.circular(100),
                  ),
                  border: Border.all(width: 1, color: Colors.grey.shade100)),
              child: Row(
                children: [
                  CustomCacheImage(
                      width: 60,
                      height: 60,
                      borderRadius: BorderRadius.circular(100),
                      imageUrl:
                          'https://play-lh.googleusercontent.com/0SAFn-mRhhDjQNYU46ZwA7tz0xmRiQG4ZuZmuwU8lYmqj6zEpnqsee_6QDuhQ4ZofwXj=w240-h480-rw'),
                  const SizedBox(
                    width: 12,
                  ),
                  const Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sanjay Jana',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '+9-8765674653',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      )
                    ],
                  )),
                  const SizedBox(
                    width: 4,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.leaderboard,
                        size: 16,
                        color: AppColor.primaryOrangeColor.withOpacity(0.6),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '${index + 4}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
