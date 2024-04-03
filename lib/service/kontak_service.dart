class KontakService {
  final String baseUrl = 'https://paml.tatiumy.com/api/';
  final String endPoint = 'people';

  Uri getUri(String path) {
    return Uri.parse("$baseUrl$path");
  }
  
}