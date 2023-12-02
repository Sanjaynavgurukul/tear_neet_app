import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
        child: SafeArea(
          child: Column(
            children: [
              appBar(),
              const Gap(20),
              bookSection(),
              const Gap(20),
              testSection()
            ],
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Temukan Berbagai\nMacam Sayuran',
                style: TextStyle(
                    color: AppColor.primaryOrangeColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Cari Sayuran Cari Sayuran',
                style: const TextStyle(
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
            imageUrl:
                'https://image.lexica.art/full_jpg/7515495b-982d-44d2-9931-5a8bbbf27532')
      ],
    );
  }

  Widget bookSection() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5, bottom: 10),
            child: Row(
              children: [
                Text(
                  "Books",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Text("View All",style: TextStyle(fontSize: 14)),
                    Icon(Icons.arrow_right_alt_outlined)
                  ],
                )
              ],
            ),
          ),
          const Gap(5),
          Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, index) => const Divider(
                      height: 0,
                      indent: 10,
                      thickness: 1,
                      color: Color(0xffbdbdbd)),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: const Color(0xff121212))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(10),
                            CustomCacheImage(
                                width: 200,
                                height: 150,
                                borderRadius: BorderRadius.circular(10),
                                imageUrl:
                                    'https://image.lexica.art/full_jpg/7515495b-982d-44d2-9931-5a8bbbf27532'),
                            const Gap(10),
                            const Text("Basic Fundamental",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            const Gap(10),
                            const Text("Sanjay Jana",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal)),
                            const Gap(10),
                            const Text("₹ 10000",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }

  Widget testSection() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5, bottom: 10),
            child: Row(
              children: [
                Text(
                  "Books",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Text("View All",style: TextStyle(fontSize: 14)),
                    Icon(Icons.arrow_right_alt_outlined)
                  ],
                )
              ],
            ),
          ),
          const Gap(5),
          Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, index) => const Divider(
                      height: 0,
                      indent: 10,
                      thickness: 1,
                      color: Color(0xffbdbdbd)),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: const Color(0xff121212))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(10),
                            CustomCacheImage(
                                width: 200,
                                height: 150,
                                borderRadius: BorderRadius.circular(10),
                                imageUrl:
                                    'https://image.lexica.art/full_jpg/7515495b-982d-44d2-9931-5a8bbbf27532'),
                            const Gap(10),
                            const Text("Basic Fundamental",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            const Gap(10),
                            const Text("Sanjay Jana",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal)),
                            const Gap(10),
                            const Text("₹ 10000",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
