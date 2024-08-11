import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/helper/utils.dart';
import 'package:tyarineetki/screens/landing_screen/landing_screen.dart';

class PaymentGateway extends StatefulWidget {
  const PaymentGateway({super.key, required this.amount});

  final num amount;

  @override
  State<PaymentGateway> createState() => _PaymentGatewayState();
}

class _PaymentGatewayState extends State<PaymentGateway> {
  final Razorpay razorpay = Razorpay();
  int _type = 0;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = getAnimation(_type);
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Lottie.asset('assets/lottie/${data['animation']}'),
              Text(
                data['label'],
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(data['label_2'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.normal)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> getAnimation(int type) {
    switch (type) {
      case 1:
        return {
          "label": 'Payment Success',
          'label_2':
          'Please wait while the payment is in progress. Do not close the app.',
          'animation': 'success.json'
        };
      case 2:
        return {
          "label": 'Payment Failed',
          'label_2':
          'Payment will be refunded within 3-4 working days if deducted.',
          'animation': 'failed.json'
        };
      default:
        return {
          "label": 'In-Progress',
          'label_2':
          'Please wait while the payment is in progress. Do not close the app.',
          'animation': 'loading.json'
        };
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      initiatePaymentListener();
    });
  }

  void initiatePaymentListener() {
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWalletSelected);

    Future.delayed(const Duration(seconds: 3), (() {
      pay();
    }));
  }

  // 'key': 'rzp_live_LBmyXg2jf02yIy',
  //'key': 'rzp_test_zk6XiNBejSiQPx',

  void pay() {
    // try{
    Map<String, dynamic> body = {
      'key': 'rzp_test_KI8Zlk1TKOBSrw',
      'amount': widget.amount * 100,
      'name': 'Tyari Neet Ki',
      'description': 'Neet Subscription',
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      // 'order_id': widget.model.ccvanue!.id,
      'prefill': {
        'contact': '${util.user!.phone}',
        'email': '${"demo@demo.in"}'
      },
    };
    razorpay.open(body);
  }

  //Handle Payment Responses

  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    log('cehck response erro ---- ${response.error}');
    setState(() {
      _type = 2;
    });

    Future.delayed(const Duration(seconds: 3), (() {
      Navigator.pop(context);
    }));
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    setState(() {
      _type = 2;
    });

    Future.delayed(const Duration(seconds: 3), (() {
      Navigator.pop(context);
    }));
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    setState(() {
      _type = 1;
    });

    addToCollection();
  }

  void addToCollection() async {
    await FirebaseFirestore.instance.collection('subscription').doc(
        '${util.userId}').set(
        {
          'amount' : widget.amount,
          'create_at':FieldValue.serverTimestamp(),
        });

    Future.delayed(const Duration(seconds: 1), (() {
      //TODO
      NavigationHelper().normalNavigatePushReplacementUntil(
          context: context, screen: LandingScreen());
    }));
  }
}
