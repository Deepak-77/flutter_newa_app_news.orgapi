import 'package:flutter/material.dart';
import 'package:news_app_flutter_news_orgapi/views/home.dart';
import 'package:news_app_flutter_news_orgapi/views/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash = true;
  LoadHome() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showingSplash = false;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    LoadHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Snack',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showingSplash ? SplashScreen() : HomeScreen(),
    );
  }
}
