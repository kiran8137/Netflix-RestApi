import 'package:flutter/material.dart';
import 'package:netflix_clone_rest_api/api_services/api_service.dart';
import 'package:netflix_clone_rest_api/constants/api_constant.dart';
import 'package:netflix_clone_rest_api/constants/constant.dart';
import 'package:netflix_clone_rest_api/presentation/new_and_hot/widget/coming_soon_tile.dart';
import 'package:netflix_clone_rest_api/presentation/search/screen_search.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: AppBar(
                backgroundColor: Colors.black,
                title: const Text(
                  "New & Hot",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal),
                ),
                actions: [
                  Icon(
                    Icons.cast,
                    color: Colors.white,
                    size: 30,
                  ),
                  kwidth,
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenSearch()));
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
                bottom: TabBar(
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  indicatorColor: Colors.white,
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Tab(
                      text: " 🍿Coming Soon ",
                    ),
                    Tab(
                      text: " 👀 Everyone's watching ",
                    )
                  ],
                ),
              )
              //AppBarWidget()
              ),
          body: FutureBuilder(
            future: Api().getComingSoonMovies(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text('No data available'),
                );
              } else if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('15',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold)),
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
                                    child: Image.network(
                                        "${ApiConstant.imagePath}${snapshot.data![index].posterPath}"),
                                    // decoration: BoxDecoration(
                                    //     borderRadius: kRadius,
                                    //     //color: Colors.red,
                                    //     image:   DecorationImage(
                                    //       image:
                                    //           AssetImage("${snapshot.data![index].posterPath}"),
                                    //     ),
                                    //     ),
                                  ),
                                    Text(
                                    "${snapshot.data![index].title}",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    
                                    "${snapshot.data![index].overview}",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: const Color.fromARGB(
                                            255, 203, 199, 199)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
            // child: ListView.builder(
            //   itemCount: 5,
            //   itemBuilder:(context, index) {
            //   return comingsoonwidget(size: size);
            // },),
          )),
    );
  }
}
