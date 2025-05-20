import 'package:flutter/material.dart';
import 'package:food_go/data.dart';
import 'package:food_go/pesan.dart';

class Detail extends StatefulWidget {
  final String title;
  final int idFood;
  final int category;

  Detail({
    required this.title,
    required this.idFood,
    required this.category,
  }); // Constructor dengan parameter

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int qty = 1;
  late double totalPrice;

  @override
  Widget build(BuildContext context) {
    final produck =
        Data().food.where((foo) => foo['id'] == widget.idFood).toList();
    final foodItem = produck[0];

    // Inisialisasi total harga berdasarkan harga produk
    totalPrice = foodItem['price'] * qty;

    return Scaffold(
      appBar: AppBar(
        title: Text(Data().category[widget.category]['name'] + " Details"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Bagian utama (GridView dan ListView)
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                Image.asset(foodItem['image']),
                ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                      child: Text(
                        foodItem['name'],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Rp. " + foodItem['price'].toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Deskripsi : ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        foodItem['deskripsi'],
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Bagian bawah (Qty dan Total Harga)
          Container(
            color: Colors.yellow,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol plus, minus, dan qty
                Row(
                  children: [
                    // Tombol minus
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (qty > 1) {
                            qty--;
                            totalPrice = foodItem['price'] * qty;
                          }
                        });
                      },
                      icon: Icon(Icons.remove),
                      color: Colors.black,
                    ),
                    // Qty
                    Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Text(
                        qty.toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    // Tombol plus
                    IconButton(
                      onPressed: () {
                        setState(() {
                          qty++;
                          totalPrice = foodItem['price'] * qty;
                        });
                      },
                      icon: Icon(Icons.add),
                      color: Colors.black,
                    ),
                  ],
                ),
                // Total harga dan tombol pesan
                Row(
                  children: [
                    // Total harga
                    Text(
                      "Rp. ${totalPrice.toStringAsFixed(0)}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 16),
                    // Tombol pesan
                    ElevatedButton(
                      onPressed: () {
                        // Tambahkan logika untuk tombol pesan di sini
                        print(
                          "Pesanan " +
                              foodItem['name'] +
                              " sudah dibuat dengan qty: $qty dan total harga: Rp. ${totalPrice.toStringAsFixed(0)}",
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pesan()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                      ),
                      child: Text(
                        "Pesan",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
