import 'dart:io';

import 'package:flutter/material.dart';
import 'package:netflix_clone_rest_api/constants/colors/colors.dart';
import 'package:netflix_clone_rest_api/presentation/main_page/screen_main_page.dart';
import 'package:netflix_clone_rest_api/presentation/search/screen_search.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundcolor,
        textTheme:const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium : TextStyle(color: Colors.white)
        ) 
      ),
      home:    
      ScreenMainPage()
      //ScreenSearch()
    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

 
   
