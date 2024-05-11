import 'package:flutter/material.dart';
import 'package:netflix_clone_rest_api/api_services/api_service.dart';
import 'package:netflix_clone_rest_api/constants/api_constant.dart';
import 'package:netflix_clone_rest_api/constants/constant.dart';
import 'package:netflix_clone_rest_api/model/movies.dart';
import 'package:netflix_clone_rest_api/presentation/search/screen_search.dart';
import 'package:netflix_clone_rest_api/presentation/widgets/main_title_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Movies>> trendingmoives;
  late Future<List<Movies>> topRatedMovies;
  late Future<List<Movies>> southindianmovies;
  late Future<List<Movies>> suggestionmovie;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    trendingmoives = Api().getTrendingMovies();
    topRatedMovies = Api().getTopRatedMovies();
    southindianmovies = Api().getsouthindianmovies();
    suggestionmovie = Api().getSuggestionMovie();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset("assets/netflix.png"),
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
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        "TV Shows",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        "Movies",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        "Categories",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              FutureBuilder(
                
                future: suggestionmovie,
                builder: (context,snapshot) {  
                  if(snapshot.hasError){
                    return Center(
                      child: Text('No data available'),
                    );
                  }else if(snapshot.hasData){
                     
                    //print("hiii""${snapshot[0]}");
                    return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                               color:Colors.white,
                              width: 150,
                              height: 200,

                              child: Image.network(
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover,
                                '${ApiConstant.imagePath}${snapshot.data?[index].posterPath}'
                              ),
                            ),
                          ),
                        );
                      }
                      );
                  }else{
                    return const Center(child: CircularProgressIndicator(),);
                  }
                },
                 
              ),
               

              kheigth,
              const Text('Trending Movies',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
                ),
              ),
              FutureBuilder(
                future: trendingmoives, 
                builder:(context, snapshot) {
                  if(snapshot.hasError){
                    return Center(
                      child: const Text('No data available'),
                    );
                    
                  }else if(snapshot.hasData){
                    return SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                               color:Colors.white,
                              width: 150,
                              height: 200,

                              child: Image.network(
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover,
                                '${ApiConstant.imagePath}${snapshot.data?[index].posterPath}'
                              ),
                            ),
                          ),
                        );
                      }
                      )
                      );
                      
                  }
                  
                  else{
                    return const Center(child: CircularProgressIndicator(),);
                  }
                }
                ),


              const Text('Top Rated Movies',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
                ),
              ),
              FutureBuilder(
                future: topRatedMovies, 
                builder:(context, snapshot) {
                  if(snapshot.hasError){
                    return Center(
                      child: Text('No data available'),
                    );
                    
                  }else if(snapshot.hasData){
                    return SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                               color:Colors.white,
                              width: 150,
                              height: 200,

                              child: Image.network(
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover,
                                '${ApiConstant.imagePath}${snapshot.data?[index].posterPath}'
                              ),
                            ),
                          ),
                        );
                      }
                      )
                      );
                      
                  }
                  
                  else{
                    return const Center(child: CircularProgressIndicator(),);
                  }
                }
                ),




              const Text('South Indian Movies',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
                ),
              ),
              FutureBuilder(
                future: southindianmovies, 
                builder:(context, snapshot) {
                  if(snapshot.hasError){
                    return Center(
                      child: Text('No data available'),
                    );
                    
                  }else if(snapshot.hasData){
                    return
                     SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                               color:Colors.white,
                              width: 150,
                              height: 200,

                              child: Image.network(
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover,
                                '${ApiConstant.imagePath}${snapshot.data?[index].posterPath}'
                              ),
                            ),
                          ),
                        );
                      }
                      )
                      );
                      
                  }
                  
                  else{
                    return const Center(child: CircularProgressIndicator(),);
                  }
                }
                )
               

              
              // MainTitleCard(title: 'Upcoming Movies'),
              // MainTitleCard(title: 'South Indian Cinema')
            ],
          ),
        ),
      ),
    );
  }
}
