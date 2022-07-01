import 'dart:convert';

import 'package:api_rumahmakan_2/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseUrl = 'https://62bef19ebe8ba3a10d5fd64a.mockapi.io/pesanan';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        it.forEach((element) {
          print(element);
        });
        List<Pesanan> pesanan = it.map((e) => Pesanan.fromJson(e)).toList();
        return pesanan;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
