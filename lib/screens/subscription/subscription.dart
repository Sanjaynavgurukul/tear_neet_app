import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/model/subscription_model.dart';
import 'package:tyarineetki/screens/subscription/view_model/subscription_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  late SubscriptionViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<SubscriptionViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: mainView(),
    );
  }

  Widget mainView() {
    return StreamBuilder(
        stream: viewModel.getSubDetail(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
            return const SizedBox(
              child: Center(
                child: CupertinoActivityIndicator(),
              ),
            );
          }

          if (snapshot.hasError) {
            return const SizedBox();
          }

          if (!snapshot.hasData) {
            return const SizedBox();
          }

          SubscriptionModel item = SubscriptionModel.fromJson(
              snapshot.data!.data() as Map<String, dynamic>);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                      children: [
                        Text(
                          '${item.subName}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Text(
                              '\u{20B9}',
                              style: TextStyle(
                                  color: AppColor.primaryOrangeColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40),
                            ),
                            Text(
                              '${item.amount}',
                              style: TextStyle(
                                  color: AppColor.primaryOrangeColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40),
                            ),
                            Text(
                              '/Month',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          '${item.description}',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          'What\'s Includes',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        if (item.packageIncludes != null &&
                            item.packageIncludes!.isNotEmpty)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                                item.packageIncludes!.length, (index) {
                              String i = item.packageIncludes![index];
                              return Padding(
                                padding: EdgeInsets.only(top: 6, bottom: 6),
                                child: Text(
                                  '${i}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              );
                            }),
                          ),
                        Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(16),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                  colors: [Colors.indigoAccent, Colors.purple]),
                            ),
                            child: Text(
                              'Purchase Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ]),
                ),
              )
            ],
          );
        });
  }

  int calculateMonthsFromDays(int numberOfDays) {
    // Get the current date
    DateTime currentDate = DateTime.now();

    // Calculate the target date by adding the number of days to the current date
    DateTime targetDate = currentDate.add(Duration(days: numberOfDays));

    // Calculate the difference in months between the current date and the target date
    int monthsDifference = (targetDate.year - currentDate.year) * 12 +
        (targetDate.month - currentDate.month);

    return monthsDifference;
  }
}
