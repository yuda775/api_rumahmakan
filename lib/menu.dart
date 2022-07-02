import 'package:api_rumahmakan_2/model.dart';
import 'package:api_rumahmakan_2/repository.dart';
import 'package:api_rumahmakan_2/kasir.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Repository repository = Repository();

  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.only(top: 25, right: 5);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rumah Makan 2"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KasirPage()));
                setState(() {});
              },
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35),
                child: const Center(
                  child: Text(
                    "Pilih Maknan",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: edgeInsets,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/sandwich.png'),
                          const ListTile(
                            title: Text('Sandwich',
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            subtitle: Text(
                              "Roti lapis dengan isi sayuran, keju dan daging sapi.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rp. 25.000",
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text('Jumlah : $_sandwich')),
                      Row(children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              (_sandwich > 0) ? _sandwich -= 1 : 0;
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              _sandwich += 1;
                            });
                          },
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25, right: 5),
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/burger.png'),
                          const ListTile(
                            title: Text('Burger',
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            subtitle: Text(
                              "Makanan Khas Bikini Bottom.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rp. 10.000",
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text('Jumlah : $_burger')),
                      Row(children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              (_burger > 0) ? _burger -= 1 : 0;
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              _burger += 1;
                            });
                          },
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25, right: 5),
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/kentang.png'),
                          const ListTile(
                            title: Text('French Fries',
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            subtitle: Text(
                              "Kentang goreng dengan saus dan mayones.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rp. 15.000",
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text('Jumlah : $_frenchFries')),
                      Row(children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              (_frenchFries > 0) ? _frenchFries -= 1 : 0;
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              _frenchFries += 1;
                            });
                          },
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25, right: 5),
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/ayam.png'),
                          const ListTile(
                            title: Text('Fried Chicken',
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            subtitle: Text(
                              "Ayam Krispi Juicy.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rp. 20.000",
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text('Jumlah : $_friedChicken')),
                      Row(children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              (_friedChicken > 0) ? _friedChicken -= 1 : 0;
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              _friedChicken += 1;
                            });
                          },
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Divider(
            height: 25,
            thickness: 10,
            color: Colors.green,
          ),
          Container(
            margin: const EdgeInsets.only(top: 35),
            child: const Center(
              child: Text(
                "Pilih Minuman",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25, right: 5),
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/cocacola.png'),
                          const ListTile(
                            title: Text('CocaCola',
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            subtitle: Text(
                              "Minuman CocaCola Dingin.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rp. 15.000",
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text('Jumlah : $_cocacola')),
                      Row(children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              (_cocacola > 0) ? _cocacola -= 1 : 0;
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              _cocacola += 1;
                            });
                          },
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25, right: 5),
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/greenTea.png'),
                          const ListTile(
                            title: Text('Green Tea',
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            subtitle: Text(
                              "Minuman Green Tea Dingin.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rp. 10.000",
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text('Jumlah : $_greenTea')),
                      Row(children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              (_greenTea > 0) ? _greenTea -= 1 : 0;
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              _greenTea += 1;
                            });
                          },
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25, right: 5),
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/jus.png'),
                          const ListTile(
                            title: Text('Orange Juice',
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            subtitle: Text(
                              "Minuman Jus Jeruk Dingin.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rp. 15.000",
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text('Jumlah : $_orangeJuice')),
                      Row(children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              if (_orangeJuice > 0) {
                                _orangeJuice -= 1;
                              } else {
                                _orangeJuice = 0;
                              }
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle),
                          color: Colors.green,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              _orangeJuice += 1;
                            });
                          },
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                title: const Text("Perhatian !!!"),
                content: const Text("Yakin dengan menu yang dipilih?"),
                actions: <Widget>[
                  Column(
                    children: [
                      _createDataTable(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.yellowAccent),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: (() async {
                              Pesanan pesanan = Pesanan(
                                  id: 0.toString(),
                                  sandwich: _sandwich.toString(),
                                  burger: _burger.toString(),
                                  frenchFriesh: _frenchFries.toString(),
                                  friedChicken: _friedChicken.toString(),
                                  cocaCola: _cocacola.toString(),
                                  greenTea: _greenTea.toString(),
                                  orangeJuice: _orangeJuice.toString(),
                                  hargaSandwich: _HNsandwich.toString(),
                                  hargaBurger: _HNburger.toString(),
                                  hargaFrenchFriesh: _HNfrenchFries.toString(),
                                  hargaFriedChicken: _HNfriedChicken.toString(),
                                  hargaCocaCola: _HNcocacola.toString(),
                                  hargaGreenTea: _HNgreenTea.toString(),
                                  hargaOrangeJuice: _HNorangeJuice.toString(),
                                  total: _total.toString());
                              bool response =
                                  await repository.postData(pesanan);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MenuPage()));
                              setState(() {});
                            }),
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              child: const Text(
                                "Confirm",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
          );
        },
        label: const Text("Pesan Sekarang"),
        icon: const Icon(Icons.send_rounded),
        backgroundColor: Colors.green,
      ),
    );
  }
}

//Makanan
int _sandwich = 0;
int _burger = 0;
int _frenchFries = 0;
int _friedChicken = 0;

//Minuman
int _cocacola = 0;
int _greenTea = 0;
int _orangeJuice = 0;

//harga satuan
int _Hsandwich = 25000;
int _Hburger = 10000;
int _HfrenchFries = 15000;
int _HfriedChicken = 20000;
int _Hcocacola = 15000;
int _HgreenTea = 10000;
int _HorangeJuice = 15000;

//nota
int _HNsandwich = _sandwich * _Hsandwich;
int _HNburger = _burger * _Hburger;
int _HNfrenchFries = _frenchFries * _HfrenchFries;
int _HNfriedChicken = _friedChicken * _HfriedChicken;
int _HNcocacola = _cocacola * _Hcocacola;
int _HNgreenTea = _greenTea * _HgreenTea;
int _HNorangeJuice = _orangeJuice * _HorangeJuice;

//total
int _total = _HNsandwich +
    _HNburger +
    _HNfrenchFries +
    _HNfriedChicken +
    _HNcocacola +
    _HNgreenTea +
    _HNorangeJuice;

List<Map> _pesanans = [
  {'harga': _HNsandwich, 'jumlah': _sandwich, 'menu': 'Sandwich'},
  {'harga': _HNburger, 'jumlah': _burger, 'menu': 'Burger'},
  {'harga': _HNfrenchFries, 'jumlah': _frenchFries, 'menu': 'French Fries'},
  {'harga': _HNfriedChicken, 'jumlah': _friedChicken, 'menu': 'Fried Chicken'},
  {'harga': _HNcocacola, 'jumlah': _cocacola, 'menu': 'CocaCola'},
  {'harga': _HNgreenTea, 'jumlah': _greenTea, 'menu': 'Green Tea'},
  {'harga': _HNorangeJuice, 'jumlah': _orangeJuice, 'menu': 'Orang Juice'},
  {'harga': _total, 'jumlah': '-', 'menu': 'Total Harga'},
];

DataTable _createDataTable() {
  return DataTable(columns: _createColumns(), rows: _createRows());
}

List<DataColumn> _createColumns() {
  return [
    const DataColumn(
        label: Text(
      'Menu',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 10),
    )),
    const DataColumn(
        label: Text(
      'Jumlah',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 10),
    )),
    const DataColumn(
        label: Text(
      'Harga',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 10),
    )),
  ];
}

List<DataRow> _createRows() {
  List<Map> _pesanans = [
    {'harga': _HNsandwich, 'jumlah': _sandwich, 'menu': 'Sandwich'},
    {'harga': _HNburger, 'jumlah': _burger, 'menu': 'Burger'},
    {'harga': _HNfrenchFries, 'jumlah': _frenchFries, 'menu': 'French Fries'},
    {
      'harga': _HNfriedChicken,
      'jumlah': _friedChicken,
      'menu': 'Fried Chicken'
    },
    {'harga': _HNcocacola, 'jumlah': _cocacola, 'menu': 'CocaCola'},
    {'harga': _HNgreenTea, 'jumlah': _greenTea, 'menu': 'Green Tea'},
    {'harga': _HNorangeJuice, 'jumlah': _orangeJuice, 'menu': 'Orang Juice'},
    {'harga': _total, 'jumlah': '-', 'menu': 'Total Harga'},
  ];

  return _pesanans
      .map((pesanan) => DataRow(cells: [
            DataCell(Text(
              pesanan['menu'].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10),
            )),
            DataCell(Text(
              pesanan['jumlah'].toString(),
              style: const TextStyle(fontSize: 10),
            )),
            DataCell(Text(
              pesanan['harga'].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10),
            )),
          ]))
      .toList();
}
