import 'package:flutter/material.dart';
import 'package:web_in_flutter/pages/homepage.dart';
import 'package:web_in_flutter/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "HindSiliguri",
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
      ),
      home: const Homepage()
    );
  }
}