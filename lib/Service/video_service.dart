import 'package:http/http.dart' as http;
import 'dart:convert';

class VideoService {
  static Future<List<dynamic>> fetchdata() async {
    var url = 'https://andremuderhwa.pythonanywhere.com/allVideo';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final json = jsonDecode(response.body);
    return json;
  }
}
