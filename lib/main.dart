import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/screens/landing_screen/landing_screen.dart';
import 'package:tyarineetki/screens/profile/profile.dart';
import 'package:tyarineetki/screens/profile/profile_page.dart';
import 'package:tyarineetki/screens/splash_screen/initial_splash.dart';
import 'package:tyarineetki/screens/splash_screen/splash_screen.dart';
import 'package:tyarineetki/screens/splash_screen/view_model/splash_screen.dart';

late final FirebaseApp app;
late final FirebaseAuth auth;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp();
  auth = FirebaseAuth.instanceFor(app: app);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // statusBarColor: Styles.greyBGColor, // transparent status bar
        statusBarColor: Colors.transparent, // transparent status bar
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<SplashViewModel>(create: (context) => SplashViewModel()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme:ThemeData(
              // useMaterial3: true,
              primaryColor: Color(0xfffd5a50),
              scaffoldBackgroundColor: Colors.white,
              fontFamily: 'WorkSans',
              // useMaterial3: true,
              appBarTheme: const AppBarTheme(
                  centerTitle: false,
                  backgroundColor: Colors.white,
                  elevation: 2,
                  iconTheme: IconThemeData(color: Colors.black),
                  titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
                  // titleSpacing: 6,
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent, // transparent status bar
                    systemNavigationBarColor: Colors.transparent, // navigation bar color
                    statusBarIconBrightness: Brightness.dark, // status bar icons' color
                    systemNavigationBarIconBrightness: Brightness.dark,
                  )),
              brightness: Brightness.light,
            ),
            home: StreamBuilder<User?>(
              stream: auth.authStateChanges(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const InitialSplash();
                }
                String? phoneNumber = auth.currentUser!.phoneNumber;
                if(phoneNumber == null || phoneNumber.isEmpty){
                  return  const LandingScreen();
                }
                return const SplashScreen();
              },
            )),
      ),
    );
  }
}
