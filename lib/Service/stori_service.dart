import 'package:http/http.dart' as http;
import 'dart:convert';

class StorieService {
  static Future<List<dynamic>> fetchdata() async {
    var url = '';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final json = jsonDecode(response.body);
    return json;
  }
}
