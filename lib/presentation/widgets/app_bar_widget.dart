import "package:flutter/material.dart";
import "package:netflix_clone_rest_api/constants/constant.dart";
import "package:netflix_clone_rest_api/presentation/search/screen_search.dart";

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});
  


  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(
          "my Profile",
          style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal
          ),
        ),
        Spacer(),
        Icon(
          Icons.cast,
          color: Colors.white,
          size: 30,
        ),
        
        kwidth,
         GestureDetector(
          onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenSearch()));
          },
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
