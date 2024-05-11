import 'package:flutter/material.dart';
import 'package:netflix_clone_rest_api/constants/constant.dart';
import 'package:netflix_clone_rest_api/presentation/search/screen_search.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "My Profile",
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),
        ),
        actions: [
          const Icon(
            Icons.cast,
            color: Colors.white,
            size: 30,
          ),
          kwidth,
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ScreenSearch()));
            },
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
       
    ),
    body: SafeArea(
      child: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.white,
                height: 100,
                width: 100,
                ),
            ),
          ),
          const Text("Kiran",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),

          kheigth,

          const Row(
             
            children:
             [
              Icon(Icons.notifications , color: Colors.red,size: 40,),
              Text("Notifications",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
              ),
              SizedBox(width: 150,),
              Icon(Icons.chevron_right ,  color: Colors.white,size: 40,)
            ],
          ),

          kheigth,
          kheigth,
           const Row(
             
            children:
             [
              Icon(Icons.download , color: Colors.red,size: 40,),
              Text("Downloads",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
              ),
              SizedBox(width: 175,),
              Icon(Icons.chevron_right ,  color: Colors.white,size: 40,)
            ],
          )
        ],
      )
      ),
    );
  }
}
