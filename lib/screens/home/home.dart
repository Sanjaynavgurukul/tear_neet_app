import 'package:flutter/material.dart';
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
            children: [appBar()],
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
                    color:AppColor.primaryOrangeColor,
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
}
