import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maurat_mobprog/screens/home_screen.dart';
import 'package:maurat_mobprog/screens/newsfeed_screen.dart';

void main() => runApp(const MauratFacebook());

class MauratFacebook extends StatelessWidget {
  const MauratFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Facebook Replication',
          initialRoute: '/home',
          routes: {
            '/newsfeed': (context) => NewsFeedScreen(),
            '/home': (context) => HomeScreen(),
          },
        );
      },
    );
  }
}