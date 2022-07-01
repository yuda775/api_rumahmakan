import 'package:api_rumahmakan_2/repository.dart';
import 'package:flutter/material.dart';
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
            return Container(
                child: Row(
              children: [
                Column(
                  children: [Text("Pesanan Ke- ")],
                ),
                Text(
                  listPesanan[index].id.toString(),
                )
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
