
import 'package:flutter/material.dart';
import 'package:netflix_clone_rest_api/constants/colors/colors.dart';
import 'package:netflix_clone_rest_api/presentation/home/screen_home.dart';
import 'package:netflix_clone_rest_api/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:netflix_clone_rest_api/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone_rest_api/presentation/profile/screen_user_profile.dart';

class ScreenMainPage extends StatelessWidget {
    ScreenMainPage({super.key});

  final _pages = [
    HomeScreen(),
    ScreenNewAndHot(),
    ScreenProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexchangenotifier, builder:(context, int index, child) {
          return _pages[index];
        },)
        ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}