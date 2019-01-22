final String _imageUrl = "https://image.tmdb.org/t/p/w500/";
String getMediumPictureUrl(String path) => _imageUrl + path;

Map<int, String> _genreMap = {
  28: 'Accion',
  12: "Adventure",
  16: "Animation",
  35: "Comedy",
  80: "Crime",
  99: "Documentary",
  18: "Drama",
  10751: "Family" ,  
  14: "Fantasy",    
  36: "History",   
  27: "Horror" ,  
  10402: "Music" ,   
  9648: "Mystery" ,  
  10749: "Romance"   , 
  878: "Science Fiction"  ,  
  10770: "TV Movie",    
  53: "Thriller",
  10752: "War",
  37: "Western",
};

List<String> genresToList(List<dynamic> genreIds) => genreIds.map((id) => _genreMap[id]).toList();

String genreValue(List<dynamic> genreIds){
  StringBuffer stringBuffer = new StringBuffer();
  stringBuffer.writeAll(genresToList(genreIds), ", ");
  return stringBuffer.toString();
}