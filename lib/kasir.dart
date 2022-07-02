import 'package:api_rumahmakan_2/menu.dart';
import 'package:api_rumahmakan_2/repository.dart';
import 'package:flutter/material.dart';
import 'package:http/src/response.dart';
import 'model.dart';

class KasirPage extends StatefulWidget {
  const KasirPage({Key? key}) : super(key: key);

  @override
  State<KasirPage> createState() => _KasirPageState();
}

class _KasirPageState extends State<KasirPage> {
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
            return Card(
                elevation: 8,
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Text(
                      "Pesanan Ke- " + listPesanan[index].id,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Menu yang di pesan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('Menu')),
                          DataColumn(label: Text('Jumlah')),
                          DataColumn(label: Text('Harga')),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text('Sandwich')),
                            DataCell(Text(listPesanan[index].sandwich)),
                            DataCell(Text(
                                'Rp. ' + listPesanan[index].hargaSandwich)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('French Friesh')),
                            DataCell(Text(listPesanan[index].frenchFriesh)),
                            DataCell(Text(
                                'Rp. ' + listPesanan[index].hargaFrenchFriesh)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Fried Chiken')),
                            DataCell(Text(listPesanan[index].friedChicken)),
                            DataCell(Text(
                                'Rp. ' + listPesanan[index].hargaFriedChicken)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Sandwich')),
                            DataCell(Text(listPesanan[index].sandwich)),
                            DataCell(Text(
                                'Rp. ' + listPesanan[index].hargaSandwich)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('CocaCola')),
                            DataCell(Text(listPesanan[index].cocaCola)),
                            DataCell(Text(
                                'Rp. ' + listPesanan[index].hargaCocaCola)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Green Tea')),
                            DataCell(Text(listPesanan[index].greenTea)),
                            DataCell(Text(
                                'Rp. ' + listPesanan[index].hargaGreenTea)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Orange Juice')),
                            DataCell(Text(listPesanan[index].orangeJuice)),
                            DataCell(Text(
                                'Rp. ' + listPesanan[index].hargaOrangeJuice)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Total Bayar')),
                            DataCell(Text("-")),
                            DataCell(Text('Rp. ' + listPesanan[index].total)),
                          ]),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    IconButton(
                        onPressed: () async {
                          bool response = await repository
                              .deleteData(listPesanan[index].id) as bool;

                          if (response.hashCode == 200) {
                            print('Delete Success');
                          } else {
                            print('Detelete Failed');
                          }
                          getData();
                        },
                        icon: Icon(Icons.delete, size: 35)),
                    SizedBox(height: 15),
                  ],
                ));
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: listPesanan.length),
    );
  }
}
