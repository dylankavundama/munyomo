// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:newapppolitik/MODEL/fondateur.dart';

// class FondateurService {
//   static Future<List<Fondateur>> fetchdata() async {
//     var url =
//         'https://andremuderhwa.pythonanywhere.com/allFondateur?format=json';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final json = jsonDecode(response.body);
//     final result = json as List<dynamic>;
//     final data = result.map((e) => Fondateur.fromJson(e)).toList();
//     return data;
//   }
// }
