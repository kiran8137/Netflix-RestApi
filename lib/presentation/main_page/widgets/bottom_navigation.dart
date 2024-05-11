import 'package:flutter/material.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangenotifier,
      builder: (context, newIndex, _) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            currentIndex: newIndex,
            onTap: (index) {
              indexchangenotifier.value = index;
            },
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_lesson), label: 'New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'My Profile')
            ]);
      },
    );
  }
}
