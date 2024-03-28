import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha/utils/screen_util.dart';
import 'package:tomisha/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: DeviceCheck.isMobile(context)
          ? const Size(360, 640)
          : const Size(1920, 1080),
      child: MaterialApp(
        title: 'Tomisha',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          //make lato text theme from google fonts
          fontFamily: 'Lato',
        ),
        home: const HomePage(),
      ),
    );
  }
}
