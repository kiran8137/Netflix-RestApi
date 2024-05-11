import 'package:flutter/material.dart';
import 'package:netflix_clone_rest_api/api_services/api_service.dart';
import 'package:netflix_clone_rest_api/constants/api_constant.dart';
import 'package:netflix_clone_rest_api/constants/constant.dart';
import 'package:netflix_clone_rest_api/model/movies.dart';
import 'package:netflix_clone_rest_api/presentation/search/widgets/title.dart';

const imageurl =
    "https://media.themoviedb.org/t/p/w533_and_h300_bestv2/628Dep6AxEtDxjZoGP78TsOxYbK.jpg";

class ScreenSearchIdle extends StatelessWidget {
  const ScreenSearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchscreentitle(title: 'Top Searches',),
        kheigth,
        Expanded(
          child: FutureBuilder(
            
            future: Api().getTrendingMovies(),
            builder: (context, snapshot) {
              if(snapshot.hasError){
                return Center(child: Text("No data available"));
              }else if(snapshot.hasData){
                return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return   TopSearchItemTile(snapshot: snapshot, index: index,);
                },
                separatorBuilder: (context, index) => const SizedBox(height: 20,),
                itemCount: 10);
              }else{
                return Center(child: CircularProgressIndicator(),);
              }
            },
            // child: ListView.separated(
            //     shrinkWrap: true,
            //     itemBuilder: (ctx, index) {
            //       return const TopSearchItemTile();
            //     },
            //     separatorBuilder: (context, index) => const SizedBox(height: 20,),
            //     itemCount: 10),
          ),
        )
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key, required this.snapshot, required this.index,  });

  final AsyncSnapshot<List<Movies>> snapshot;
  final int index;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: screenwidth * 0.35,
            height: 80,
            child: Image.network("${ApiConstant.imagePath}${snapshot.data![index].backDroppath}",
            filterQuality: FilterQuality.high,
            fit:BoxFit.fill,
            ),
            
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: NetworkImage(imageurl),
              //   )
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
          ),
        ),
        kwidth,
          Expanded(
          child: Text(
            '${snapshot.data![index].title}',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const Icon(Icons.play_circle,color: Colors.grey,size: 50,)
      ],
    );
  }
}
