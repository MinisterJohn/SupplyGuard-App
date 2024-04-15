import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_4/pages/dashboard.dart';
import 'package:healthcare_4/pages/quiz.dart';
import 'package:healthcare_4/pages/login.dart';
import 'package:healthcare_4/pages/signup.dart';
import 'package:healthcare_4/pages/education_module.dart';
import 'package:healthcare_4/pages/splashscreen.dart';
import 'package:healthcare_4/pages/twitter_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(); // Initialize Firebase for mobile

  // Only initialize Firebase for web if running on web platform
  // if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBK-inR8kOl43jSvmcRTM0AD1smN-ybleA",
            appId: "1:20796774856:android:aeb392a091e251b91c08fd",
            messagingSenderId: "20796774856",
            projectId: "healthcare-a2194"));
  // }

  runApp(MaterialApp(
    home: const SplashScreen(),
    routes: {
      // "/": (context) => SplashScreen(),
      "/login": (context) => const Login(),
      "/signup": (context) => const Signup(),
      "/education": (context) => const EducationalPage(),
      "/quiz": (context) => const NewsPage(),
      "/news": (context) => const NewsFeed(),
      "/dashboard": (context) => const DashboardPage(),
    },
  ));
}
