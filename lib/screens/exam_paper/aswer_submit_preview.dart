import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class AnsWerSubmitPreview extends StatefulWidget {
  const AnsWerSubmitPreview({super.key, required this.data});

  final List<Map<String, dynamic>> data;

  @override
  State<AnsWerSubmitPreview> createState() => _AnsWerSubmitPreviewState();
}

class _AnsWerSubmitPreviewState extends State<AnsWerSubmitPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Paper Preview'),
      ),
      body: mainView(),
    );
  }

  Widget mainView() {
    if (widget.data.isEmpty) {
      return Container();
    }

    return ListView.builder(
        itemCount: widget.data.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> item = widget.data[index];
          return Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Html(
                  data: '${item['question']}',
                  style: {
                    '*': Style(padding: HtmlPaddings.zero, margin: Margins.zero)
                  },
                ),
                imageSection(item),
                const SizedBox(
                  height: 16,
                ),
                optionsItem(item),
              ],
            ),
          );
        });
  }

  Widget optionsItem(Map<String, dynamic> data) {
    List<dynamic> initialData = data['options'];

    List<Map<String, dynamic>> options = initialData.map((e) {
      String d = jsonEncode(e);
      return jsonDecode(d) as Map<String, dynamic>;
    }).toList();

    // List<Map<String, dynamic>> options = data['options'] as List<Map<String,dynamic>>;
    return Column(
      children: List.generate(options.length, (index) {
        String optionIndex = getAlphabet(index + 1);
        String message = "Wrong Answer";
        Color color = Colors.grey;
        if (optionIndex.toLowerCase() == data['answer'].toLowerCase()) {
          // Correct answer
          color = Colors.green.shade200;
          message = "Right Answer";
        } else if (optionIndex.toLowerCase() ==
                data['submitAnswer'].toLowerCase() &&
            index != data['answer'].toLowerCase()) {
          // Selected but incorrect answer
          color = Colors.red.shade200;
          message = "Wrong Answer";
        } else {
          // Default color for unselected options
          color = Colors.grey.shade200;
        }
        // log('cehck option --- correctAnswer ---- ${data['answer']} --- submited Answer --- ${data['submitAnswer']}');
        //
        //
        //
        //
        // bool isRight = data['submitAnswer'] == optionIndex;
        // bool correctOption =
        //     optionIndex.toLowerCase() == data['answer'].toLowerCase();
        // log('cehck option --- correctAnswer -2--- ${isRight} --- submited Answer --- ${correctOption}');
        //

        Map<String, dynamic> item = options[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 16),
              margin: const EdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: color,
                  // color: correctOption?Colors.:isRight?Colors.green.shade200:Colors.grey.shade200,
                  border: Border.all(width: 1, color: Colors.grey.shade300)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 12, left: 16, right: 16),
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                      color: Colors.grey.shade300,
                    ))),
                    child: Text(
                      optionIndex,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: item['type'] == 'image'
                          ? CustomCacheImage(
                              imageUrl: item['content'],
                              borderRadius: BorderRadius.zero,
                              height: 200,
                              fit: BoxFit.fill,
                            )
                          : Text(
                              item['content'],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            ))
                ],
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget imageSection(Map<String, dynamic> item) {
    String? img = item['image'];
    if (img == null || img.isEmpty) {
      return const SizedBox();
    }

    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: CustomCacheImage(
        imageUrl: img,
        height: 400,
        width: double.infinity,
      ),
    );
  }

  String getAlphabet(int number) {
    if (number < 1 || number > 26) {
      return 'Invalid number';
    }

    // Assuming a 1-based index
    int asciiValue = number + 64;
    return String.fromCharCode(asciiValue);
  }
}
