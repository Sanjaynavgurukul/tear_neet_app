import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/screens/splash_screen/view_model/splash_screen.dart';
import 'package:tyarineetki/theme/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      init();
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //Initializing required View model :D
    viewModel = context.watch<SplashViewModel>();
  }

  void init() {
    viewModel.initiate(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 130,
              ),
              const Text(
                'तैyaari Jeet Ki',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Unlock your Success',
                style: TextStyle(
                    color: AppColor.primaryOrangeColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: 50,
                child: LinearProgressIndicator(
                  minHeight: 2,
                  backgroundColor: AppColor.lightPrimaryOrangeColor,
                  color: AppColor.primaryOrangeColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
