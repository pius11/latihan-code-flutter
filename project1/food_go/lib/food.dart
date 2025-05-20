import 'package:flutter/material.dart';
import 'package:food_go/data.dart';
import 'package:food_go/detail.dart';

class Food extends StatelessWidget {
  final String title; // Parameter untuk menerima nama kategori
  final int idCategory; // Parameter untuk menerima id kategori
  Food({
    required this.title,
    required this.idCategory,
  }); // Konstruktor dengan parameter

  @override
  Widget build(BuildContext context) {
    //melakukan filter
    final filteredProduck =
        Data().food
            .where((produck) => produck['category'] == idCategory)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title), // Gunakan parameter title untuk judul AppBar
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: filteredProduck.length, // Menggunakan panjang data makanan
        itemBuilder: (context, index) {
          final produckItem = filteredProduck[index];

          return Container(
            width: 50,
            height: 100,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => Detail(
                          title: produckItem['name'],
                          idFood: produckItem['id'],
                          category: produckItem['category'],
                        ),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(produckItem['image'], width: 50, height: 50),
                  Text(produckItem['name'], style: TextStyle(fontSize: 20)),
                  Text(
                    "Rp. " + produckItem['price'],
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
