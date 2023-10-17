import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Model/api_model.dart';

class api_helper {
  api_helper._();

  static api_helper api = api_helper._();

  Future getdata() async {
    String url = "https://restcountries.com/v3.1/all";

    http.Response ans = await http.get(Uri.parse(url));

    if (ans.statusCode == 200) {
      List decodedData = jsonDecode(ans.body);

      List<Info> info = (decodedData
          .map((e) => Info.formMap(
              name: e['name']['common'],
              population: e['population'],
              capital: e['capital'] ?? [],
              languages: e['languages'] ?? {}))
          .toList());
      return info;
    }
  }
}
