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

  Future postData(Pesanan pesanan) async {
    try {
      final response = await http.post(Uri.parse(_baseUrl), body: {
        'id': pesanan.id,
        'sandwich': pesanan.sandwich,
        'burger': pesanan.burger,
        'frenchFriesh': pesanan.frenchFriesh,
        'friedChicken': pesanan.friedChicken,
        'cocaCola': pesanan.cocaCola,
        'greenTea': pesanan.greenTea,
        'orangeJuice': pesanan.orangeJuice,
        'hargaSandwich': pesanan.hargaSandwich,
        'hargaBurger': pesanan.hargaBurger,
        'hargaFrenchFriesh': pesanan.hargaFrenchFriesh,
        'hargaFriedChicken': pesanan.hargaFriedChicken,
        'hargaCocaCola': pesanan.hargaCocaCola,
        'hargaGreenTea': pesanan.hargaGreenTea,
        'hargaOrangeJuice': pesanan.hargaOrangeJuice,
        'total': pesanan.total
      });
      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future deleteData(String id) async {
    try {
      final response = await http.delete(Uri.parse('$_baseUrl/$id'));
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
