// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tyarineetki/db/provider.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({super.key, required this.paramData});

  final Map<String, dynamic> paramData;

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  bool isGPay = true;
  bool loading = false;
  TextEditingController referenceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: IgnorePointer(
        ignoring: loading,
        child: mainView(),
      ),
    );
  }

  Widget mainView() {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 16, right: 16),
      constraints:
          const BoxConstraints(minWidth: 400, maxWidth: 600, minHeight: 400),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          const Text(
            "Payable Amount",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const Gap(6),
          Text(
            "\u{20B9}${widget.paramData['amount']}",
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const Gap(6),
          Container(
            padding: const EdgeInsets.all(12),
            width: 200,
            height: 200,
            child: Image.asset('assets/${isGPay ? 'gpay.png' : 'phonepe.png'}'),
          ),
          const Text(
              "While you pay please add your phone number as note this will\nhelp us to verify your payment",
              style: TextStyle(fontSize: 12, color: Colors.black)),
          const Gap(6),
          paymentSwitch(),
          const Gap(10),
          const Text(
              "Please Provide you transaction reference ID to Verify your payment",
              style: TextStyle(fontSize: 12, color: Colors.black)),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black45)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: const Color(0xffFEBD59).withOpacity(0.6))),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                      width: 1, color: Colors.white), // Border color
                ),
                hintText: 'Reference ID',
                hintStyle: const TextStyle(color: Colors.black),
              ), // Cursor color
              style: const TextStyle(color: Colors.black), // Text color
              controller: referenceController, // Pre-filled text
            ),
          ),
          const Gap(20),
          InkWell(
            onTap: () {
              if (loading) {
                return;
              }
              submit();
            },
            child: Container(
              height: 50,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xfffec266)),
              child: loading
                  ? const CupertinoActivityIndicator(
                      color: Colors.white,
                    )
                  : const Text("SUBMIT",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000))),
            ),
          ),
        ],
      ),
    );
  }

  Widget paymentSwitch() {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isGPay = true;
              });
            },
            child: Container(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      width: 1,
                      color: isGPay ? const Color(0xfffec266) : Colors.black),
                  color: isGPay ? const Color(0xfffec266) : Colors.transparent),
              child: Text(
                'GPay',
                style: TextStyle(
                    fontSize: 16, color: isGPay ? Colors.white : Colors.black),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          InkWell(
            onTap: () {
              setState(() {
                isGPay = false;
              });
            },
            child: Container(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      width: 1,
                      color: !isGPay ? const Color(0xfffec266) : Colors.black),
                  color:
                      !isGPay ? const Color(0xfffec266) : Colors.transparent),
              child: Text(
                'PhonePe',
                style: TextStyle(
                    fontSize: 16, color: !isGPay ? Colors.white : Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }

  void submit() async {
    if (referenceController.text.isEmpty ||
        referenceController.text.length < 10) {
      showWarningDialog(
          context: context, message: 'Please Enter Valid Reference ID');
      return;
    }
    setState(() {
      loading = true;
    });
    widget.paramData.addAll({
      'referenceId': referenceController.text,
      'verified': false,
      'amount': 560,
      'paidAmount': 0,
      'createdAt': DateTime.now().toIso8601String()
    });

    DocumentReference? data = await Provider().saveSub(body: widget.paramData);
    if (data == null) {
      showWarningDialog(
          context: context,
          message: 'Something Went Wrong Please Try again layter');
      return;
    }
    referenceController.text = '';
    setState(() {
      loading = false;
    });
    showWarningDialog(
            context: context,
            actionLabel: 'Thanks',
            message:
                'Subscription Purchase\nPlease Wait While we are validating your payment.')
        .then((value) {
      Navigator.pop(context);
    });
  }

  Future<bool?> showWarningDialog(
      {required BuildContext context,
      String? message,
      String? actionLabel}) async {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false, // Prevent dialog dismissal on tap outside.
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  message ?? 'Warning',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context, true),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xfffec266)),
                    child: Text(
                      actionLabel ?? 'Okay',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
