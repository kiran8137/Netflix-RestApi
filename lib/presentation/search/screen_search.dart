
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_rest_api/constants/constant.dart';
import 'package:netflix_clone_rest_api/presentation/search/widgets/screen_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        actions: const [
          Icon(Icons.cast)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                 style: const TextStyle(color: Colors.white),
                
               ),

                kheigth,
               
               
               const Expanded(
                child: ScreenSearchIdle()
                )
            ],
          ),
        )
        ),
    );
  }
}