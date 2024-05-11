
class Movies{

    String title;
    String backDroppath;
    String overview;
    String posterPath;
    String releaseDate;


    Movies({
      required this.title,
      required this.backDroppath,
      required this.overview,
      required this.posterPath,
      required this.releaseDate
    });

    factory Movies.fromJson(Map<String , dynamic> json){
      return Movies(
      title: json["original_title"], 
      backDroppath: json["backdrop_path"], 
      overview: json["overview"], 
      posterPath: json["poster_path"], 
      releaseDate: json["release_date"]);
    }
}