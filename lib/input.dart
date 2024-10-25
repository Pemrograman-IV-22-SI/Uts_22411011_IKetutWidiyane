import 'package:flutter/material.dart';
import 'package:uts_pemrograman_4_22411011_i_ketut_widiyane/output.dart';

class input extends StatefulWidget {
  const input({super.key});
  static const String routeName = '/input_page';

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  TextEditingController txtNamaPembeli = TextEditingController();
  TextEditingController txtIdBarang = TextEditingController();
  TextEditingController txtNamaProduk = TextEditingController();
  TextEditingController txtHarga = TextEditingController();
  TextEditingController txtStockBarang = TextEditingController();
  TextEditingController txtJumlahBeli = TextEditingController();

  double total = 0;
  double diskon = 0;
  double grandTotal = 0;

  void hitungTotal() {
    double harga = double.tryParse(txtHarga.text) ?? 0;
    int jumlahBeli = int.tryParse(txtJumlahBeli.text) ?? 0;

    setState(() {
      total = harga * jumlahBeli;

      if (total > 10000000) {
        diskon = total * 10 / 100;
      } else {
        diskon = 0;
      }

      grandTotal = total - diskon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 40, 48),
        title: const Text(
          'Beli Barang',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 191, 0)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Pembeli",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white)),
            const SizedBox(height: 8),
            const Text("Nama", style: TextStyle(color: Colors.white)),
            TextField(
              controller: txtNamaPembeli,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const Text("Produk",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white)),
            const SizedBox(height: 8),
            const Text("Id Barang", style: TextStyle(color: Colors.white)),
            TextField(
              controller: txtIdBarang,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            const Text("Nama Barang", style: TextStyle(color: Colors.white)),
            TextField(
              controller: txtNamaProduk,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            const Text("Harga", style: TextStyle(color: Colors.white)),
            TextField(
              controller: txtHarga,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            const Text("Stock Barang", style: TextStyle(color: Colors.white)),
            TextField(
              controller: txtStockBarang,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            const Text("Jumlah Beli", style: TextStyle(color: Colors.white)),
            TextField(
              controller: txtJumlahBeli,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    hitungTotal();
                    Navigator.pushNamed(context, output.routeName, arguments: {
                      'namaPembeli': txtNamaPembeli.text,
                      'idBarang': txtIdBarang.text,
                      'namaProduk': txtNamaProduk.text,
                      'harga': txtHarga.text,
                      'stockBarang': txtStockBarang.text,
                      'jumlahBeli': txtJumlahBeli.text,
                      'total': total,
                      'diskon': diskon,
                      'grandTotal': grandTotal,
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 191, 0),
                    side: const BorderSide(color: Colors.white),
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  child: const Text('Hitung'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
