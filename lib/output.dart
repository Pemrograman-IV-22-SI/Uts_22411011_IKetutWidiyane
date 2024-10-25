import 'package:flutter/material.dart';
import 'package:uts_pemrograman_4_22411011_i_ketut_widiyane/input.dart';

class output extends StatelessWidget {
  const output({super.key});
  static const String routeName = '/Struk';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    String namaPembeli = args['namaPembeli'];
    String idBarang = args['idBarang'];
    String namaProduk = args['namaProduk'];
    String harga = args['harga'];
    String stockBarang = args['stockBarang'];
    String jumlahBeli = args['jumlahBeli'];
    double total = args['total'];
    double diskon = args['diskon'];
    double grandTotal = args['grandTotal'];

    String discountPercentage = (diskon > 0) ? '10%' : 'Tidak Ada Diskon';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text(
          'Detail Pembelian',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Pembeli",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(
              '$namaPembeli',
            ),
            const Text("Id Barang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$idBarang'),
            const Text("Nama Barang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$namaProduk'),
            const Text("Harga",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$harga'),
            const Text("Stok",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$stockBarang'),
            const Text("Jumlah Beli",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$jumlahBeli'),
            const Text("Diskon",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$discountPercentage'),
            const SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Total",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('$total'),
                  const Text("Total Potongan Diskon",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('$diskon'),
                  const Text("Grand Total",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('$grandTotal'),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, input.routeName);
                      },
                      child: const Text(
                        'Kembali',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 5, 139, 249),
                        side: const BorderSide(color: Colors.black),
                      ))
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
