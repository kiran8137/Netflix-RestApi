
// import 'package:flutter/material.dart';
// import 'package:netflix_clone_rest_api/constants/api_constant.dart';
// import 'package:netflix_clone_rest_api/constants/constant.dart';
// import 'package:netflix_clone_rest_api/presentation/widgets/main_card.dart';
// import 'package:netflix_clone_rest_api/presentation/widgets/main_title.dart';

// class MainTitleCard extends StatelessWidget {
//   const MainTitleCard({
//     super.key, required this.title, 
//     required this.snapshot,
//   });
//   final String title;
//   final AsyncSnapshot snapshot;

//   @override
//   Widget build(BuildContext context) {
//     return  
//     //kheigth,
//     SizedBox(
//        height: 400,
//       child: ListView.builder(
//         itemCount: snapshot.data!.length,
//         itemBuilder:(context, index) {
//           return SizedBox(

        
//       width: 150,
//       height: 250,
//       // decoration: BoxDecoration(
//       //   borderRadius: kRadius,
        
//       // ),
//       child: Image.network(
//         filterQuality: FilterQuality.high,
//         fit: BoxFit.cover,
//        " ${ApiConstant.imagePath}${snapshot.data![index].posterPath}"

//       ),
      
//           );

//         },
//         ),
//       // child: ListView(
//       //   scrollDirection: Axis.horizontal,
//       //   children: 
//       //   ListView.builder(
//       //     itemBuilder:(context, index) {
//       //       return Container(

//       //       )
//       //     },
//       //     )
//     //       ListView.builder(10, (index) => Padding(
//     //         padding: const EdgeInsets.all(5.0),
//     //         child: Container(
//     //   width: 150,
//     //   height: 250,
//     //   decoration: BoxDecoration(
//     //     borderRadius: kRadius,
//     //     // image: const DecorationImage(
//     //     //   filterQuality: FilterQuality.high,
//     //     //   fit : BoxFit.cover,
//     //     //   image: NetworkImage(
//     //     //     ${ApiConstant.imagePath}$
//     //     //   ),
         
//     //     // ),
        
//     //   ),
//     //   child: Image.network(
//     //     filterQuality: FilterQuality.high,
//     //     fit: BoxFit.cover,
//     //    " ${ApiConstant.imagePath}${snapshot.data[index]}"

//     //   ),
//     //   // child: Image.asset("assets/home_image.jpg"),
      
    
//     // )
//     //         //main_card(index : index , snapshot: widget.snapshot,),
//     //       ))
          
//       );
          
    
           
//   }
// }