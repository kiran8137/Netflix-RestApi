
import 'dart:convert';


import 'package:netflix_clone_rest_api/constants/api_constant.dart';
import 'package:netflix_clone_rest_api/model/movies.dart';
import 'package:http/http.dart' as http;

class Api{
  static const _trendingUrl = "https://api.themoviedb.org/3/trending/movie/day?api_key=${ApiConstant.apikey}";
  static const _topRatedMovies = "https://api.themoviedb.org/3/movie/top_rated?api_key=${ApiConstant.apikey}";
  static const _southindianmovies = "https://api.themoviedb.org/3/discover/movie?api_key=e85d6c9fffb5a5c0cf383ed7305ab4f4&with_original_language=ta&year=2024";
  static const _suggestionmovie = "https://api.themoviedb.org/3/discover/movie?api_key=e85d6c9fffb5a5c0cf383ed7305ab4f4";
  static const _comingSoonMovies = "https://api.themoviedb.org/3/movie/upcoming?api_key=e85d6c9fffb5a5c0cf383ed7305ab4f4";


  Future<List<Movies>> getTrendingMovies() async{
    final response = await http.get(Uri.parse(_trendingUrl));
    
    if(response.statusCode == 200){
      final decodedData = json.decode(response.body)['results'] as List;
        print(decodedData);
      return decodedData.map((movie) => Movies.fromJson(movie)).toList();
    }else{
      throw Exception('something happened');
    }
  }


  Future<List<Movies>> getTopRatedMovies() async{
    final response = await http.get(Uri.parse(_topRatedMovies));
    if(response.statusCode == 200){
      final decodedData = json.decode(response.body)['results'] as List;
        print(decodedData);
      return decodedData.map((movie) => Movies.fromJson(movie)).toList();
    }else{
      throw Exception('something happened');
    }
  }


  Future<List<Movies>> getsouthindianmovies() async{
    final response = await http.get(Uri.parse(_southindianmovies));
    if(response.statusCode == 200){
      final decodedData = json.decode(response.body)['results'] as List;
        print(decodedData);
      return decodedData.map((movie) => Movies.fromJson(movie)).toList();
    }else{
      throw Exception('something happened');
    }
  }



    Future<List<Movies>> getSuggestionMovie() async{
    final response = await http.get(Uri.parse(_suggestionmovie));
    if(response.statusCode == 200){
      final decodedData = json.decode(response.body)['results'] as List;
        print(decodedData);
      return decodedData.map((movie) => Movies.fromJson(movie)).toList();
    }else{
      throw Exception('something happened');
    }
  }




  Future<List<Movies>> getComingSoonMovies() async{
    final response = await http.get(Uri.parse(_comingSoonMovies));
    if(response.statusCode == 200){
      final decodedData = json.decode(response.body)['results'] as List;
        print(decodedData);
      return decodedData.map((movie) => Movies.fromJson(movie)).toList();
    }else{
      throw Exception('something happened');
    }
  }


  Future<List<Movies>> searchMovies(String moviename) async{
    //final String = "https://api.themoviedb.org/3/search/movie?query=Stranger+Things&api_key=e85d6c9fffb5a5c0cf383ed7305ab4f4"
    final response = await http.get(Uri.parse(_trendingUrl));
    if(response.statusCode == 200){
      final decodedData = json.decode(response.body)['results'] as List;
        print(decodedData);
      return decodedData.map((movie) => Movies.fromJson(movie)).toList();
    }else{
      throw Exception('something happened');
    }
  }

}