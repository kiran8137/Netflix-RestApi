
import 'package:flutter/material.dart';
import 'package:netflix_clone_rest_api/constants/constant.dart';
import 'package:netflix_clone_rest_api/model/movies.dart';

class comingsoonwidget extends StatelessWidget {
  const comingsoonwidget({
    super.key,
    required this.size, required this.snapshot, required this.index,
  });

  final Size size;
  final AsyncSnapshot <List<Movies>> snapshot;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheigth,
        Row(
          
          children: [
            SizedBox(
              width: 50,
              child: Column(
                children: [
                  Text(
                    'MAY',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('15',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(
              width: size.width - 50,
              height: 400,
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    child: Image.network("${snapshot.data![index].posterPath}"),
                    // decoration: BoxDecoration(
                    //     borderRadius: kRadius,
                    //     //color: Colors.red,
                    //     image:   DecorationImage(
                    //       image:
                    //           AssetImage("${snapshot.data![index].posterPath}"),
                    //     ),
                    //     ),
                  ),
                  const Text("Stranger Things",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces and one strange little girl.",
                  style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 203, 199, 199)),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
