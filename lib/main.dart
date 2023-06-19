import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/responsive/mobile_screen_layout.dart';
import 'package:insta_clone/responsive/responsive_layout_screen.dart';
import 'package:insta_clone/responsive/web_screen_layout.dart';
import 'package:insta_clone/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
    if(kIsWeb) {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: 'AIzaSyAZ5EGt_vaWHkusW0WDgV7qDM9fYK4ggAg',
          appId: '1:680072344368:web:ed5bc871e101c5ebbbcef5',
          messagingSenderId: '680072344368',
          projectId: 'insta-clone-16e81',
          authDomain: 'insta-clone-16e81.firebaseapp.com',
          storageBucket: 'insta-clone-16e81.appspot.com',
        )
      );
      runApp(const MyApp());
    } else {
      await Firebase.initializeApp();
      runApp(const MyApp());
    }

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),)
    );
  }

}
