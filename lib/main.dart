import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/screens/chat_group_list/view_model/chat_group_view_model.dart';
import 'package:tyarineetki/screens/home/view_model/home_view_model.dart';
import 'package:tyarineetki/screens/splash_screen/splash_screen.dart';
import 'package:tyarineetki/screens/splash_screen/view_model/splash_view_model.dart';
import 'package:tyarineetki/screens/stats_screen/view_model/leaderboard_view_model.dart';

late final FirebaseApp app;
final FirebaseAuth auth = FirebaseAuth.instance;

/// Working example of FirebaseMessaging.
/// Please use this in order to verify messages are working in foreground, background & terminated state.
/// Setup your app following this guide:
/// https://firebase.google.com/docs/cloud-messaging/flutter/client#platform-specific_setup_and_requirements):
///
/// Once you've completed platform specific requirements, follow these instructions:
/// 1. Install melos tool by running `flutter pub global activate melos`.
/// 2. Run `melos bootstrap` in FlutterFire project.
/// 3. In your terminal, root to ./packages/firebase_messaging/firebase_messaging/example directory.
/// 4. Run `flutterfire configure` in the example/ directory to setup your app with your Firebase project.
/// 5. Open `token_monitor.dart` and change `vapidKey` to yours.
/// 6. Run the app on an actual device for iOS, android is fine to run on an emulator.
/// 7. Use the following script to send a message to your device: scripts/send-message.js. To run this script,
///    you will need nodejs installed on your computer. Then the following:
///     a. Download a service account key (JSON file) from your Firebase console, rename it to "google-services.json" and add to the example/scripts directory.
///     b. Ensure your device/emulator is running, and run the FirebaseMessaging example app using `flutter run`.
///     c. Copy the token that is printed in the console and paste it here: https://github.com/firebase/flutterfire/blob/01b4d357e1/packages/firebase_messaging/firebase_messaging/example/lib/main.dart#L32
///     c. From your terminal, root to example/scripts directory & run `npm install`.
///     d. Run `npm run send-message` in the example/scripts directory and your app will receive messages in any state; foreground, background, terminated.
///  Note: Flutter API documentation for receiving messages: https://firebase.google.com/docs/cloud-messaging/flutter/receive
///  Note: If you find your messages have stopped arriving, it is extremely likely they are being throttled by the platform. iOS in particular
///  are aggressive with their throttling policy.
///
/// To verify that your messages are being received, you ought to see a notification appearon your device/emulator via the flutter_local_notifications plugin.
/// Define a top-level named handler which background/terminated messages will
/// call. Be sure to annotate the handler with `@pragma('vm:entry-point')` above the function declaration.
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  await setupFlutterNotifications();
  showFlutterNotification(message);
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  print('Handling a background message ${message.messageId}');
}

/// Create a [AndroidNotificationChannel] for heads up notifications
late AndroidNotificationChannel channel;

bool isFlutterLocalNotificationsInitialized = false;

Future<void> setupFlutterNotifications() async {
  if (isFlutterLocalNotificationsInitialized) {
    return;
  }
  channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
    'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  /// Create an Android Notification Channel.
  ///
  /// We use this channel in the `AndroidManifest.xml` file to override the
  /// default FCM channel to enable heads up notifications.
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  /// Update the iOS foreground notification presentation options to allow
  /// heads up notifications.
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  isFlutterLocalNotificationsInitialized = true;
}

void showFlutterNotification(RemoteMessage message) {
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;
  if (notification != null && android != null && !kIsWeb) {
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          // TODO add a proper drawable resource to android, for now using
          //      one that already exists in example app.
          icon: 'launch_background',
        ),
      ),
    );
  }
}

/// Initialize the [FlutterLocalNotificationsPlugin] package.
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyAmZP7nu66uqraE42EhuDn3hpFmQa2_xNI',
        appId: '1:417746687100:android:d96951607eb29e53ebe5f9',
        messagingSenderId: '',
        projectId: 'tyarineetki',
        storageBucket: 'tyarineetki.appspot.com',
      )
  );
  // Set the background messaging handler early on, as a named top-level function
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  if (!kIsWeb) {
    await setupFlutterNotifications();
  }

  // Fire  baseAuth.instanceFor(app: app);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // statusBarColor: Styles.greyBGColor, // transparent status bar
        statusBarColor: Colors.transparent, // transparent status bar
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<SplashViewModel>(
              create: (context) => SplashViewModel()),
          ChangeNotifierProvider<HomeViewModel>(
              create: (context) => HomeViewModel()),
          ChangeNotifierProvider<ChatGroupViewModel>(
              create: (context) => ChatGroupViewModel()),
          ChangeNotifierProvider<LeaderBoardViewModel>(
              create: (context) => LeaderBoardViewModel()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tyari Neet Ki',
          theme: ThemeData(
            useMaterial3: false,
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
                  statusBarColor: Colors.transparent,
                  // transparent status bar
                  systemNavigationBarColor: Colors.transparent,
                  // navigation bar color
                  statusBarIconBrightness: Brightness.dark,
                  // status bar icons' color
                  systemNavigationBarIconBrightness: Brightness.dark,
                )),
            brightness: Brightness.light,
          ),
          home: const SplashScreen(),
          // home: StreamBuilder<User?>(
          //   stream: auth.authStateChanges(),
          //   builder: (context, snapshot) {
          //     if (!snapshot.hasData) {
          //       return const InitialSplash();
          //     }
          //     String? phoneNumber = auth.currentUser!.phoneNumber;
          //     if(phoneNumber == null || phoneNumber.isEmpty){
          //       return  const LandingScreen();
          //     }
          //     return const SplashScreen();
          //   },
          // )
        ),
      ),
    );
  }
}