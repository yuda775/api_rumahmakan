import 'dart:ffi';

import 'package:api_rumahmakan_2/repository.dart';
import 'package:flutter/material.dart';

import 'model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pesanan> listPesanan = [];
  Repository repository = Repository();

  getData() async {
    listPesanan = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kasir'),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              child: Text(listPesanan[index].id.toString()),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: listPesanan.length),
    );
  }
}
