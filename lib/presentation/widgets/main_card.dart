
// import 'package:flutter/material.dart';
// import 'package:netflix_clone_rest_api/constants/api_constant.dart';
// import 'package:netflix_clone_rest_api/constants/constant.dart';

// class main_card extends StatefulWidget {
//   const main_card({
//     super.key, this.snapshot, this.index,
//   });
//  final AsyncSnapshot? snapshot;
//  final index;
//   @override
//   State<main_card> createState() => _main_cardState();
// }

// class _main_cardState extends State<main_card> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       height: 250,
//       decoration: BoxDecoration(
//         borderRadius: kRadius,
//         // image: const DecorationImage(
//         //   filterQuality: FilterQuality.high,
//         //   fit : BoxFit.cover,
//         //   image: NetworkImage(
//         //     ${ApiConstant.imagePath}$
//         //   ),
         
//         // ),
        
//       ),
//       child: Image.network(
//         filterQuality: FilterQuality.high,
//         fit: BoxFit.cover,
//        " ${ApiConstant.imagePath}${widget.snapshot.data[widget.index]}"

//       ),
//       // child: Image.asset("assets/home_image.jpg"),
      
    
//     );
//   }
// }