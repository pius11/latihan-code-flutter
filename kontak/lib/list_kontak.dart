import 'package:flutter/material.dart';
import 'package:kontak/formKontak.dart';
import 'database/db_helper.dart';
import 'model/kontak.dart';

class ListKontakPage extends StatefulWidget {
  const ListKontakPage({ Key? key }) : super(key: key);

  @override
  _ListKontakPageState createState() => _ListKontakPageState();
}

class _ListKontakPageState extends State<ListKontakPage> {
  List<Kontak> listKontak = [];
  DbHelper db = DbHelper();

  @override
  void initState() {
    //menjalankan fungsi getallkontak saat pertama kali dimuat
    _getAllKontak();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Kontak App"),
        ),
      ),
      body: ListView.builder(
        itemCount: listKontak.length,
        itemBuilder: (context, index) {
          Kontak kontak = listKontak[index];
          return Padding(
            padding: const EdgeInsets.only(
              top: 20
            ),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 50,
              ),
              title: Text(
                '${kontak.name}'
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 6
                    ),
                    child: Text("Email: ${kontak.email}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 6
                    ),
                    child: Text("Phone: ${kontak.mobileNo}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 6
                    ),
                    child: Text("Company: ${kontak.company}"),
                  ),
                ],
              ),
              trailing: Wrap(
                children: [
                  // button edit
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      _openFormEdit(kontak);
                    },
                  ),
                  // button hapus
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      //konfirmasi hapus
                      AlertDialog hapus = AlertDialog(
                        title: Text("Konfirmasi"),
                        content: Container(
                          height: 100,
                          child: Column(
                            children: [
                              Text(
                                "Yakin ingin Menghapus Data ${kontak.name}"
                              )
                            ],
                          ),
                        ),
                        //terdapat 2 button.
                        //jika ya maka jalankan _deleteKontak() dan tutup dialog
                        //jika tidak tutup dialog
                        actions: [
                          TextButton(
                            child: Text("Ya"),
                            onPressed: () {
                              _deleteKontak(kontak, index);
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: Text("Tidak"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                      showDialog(context: context, builder: (context) => hapus);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      //membuat button mengapung di bagian bawah kanan layar
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _openFormCreate();
        },
      ),
    );
  }

  //mengambil semua data Kontak
  Future<void> _getAllKontak() async {
    //list menampung data dari database
    var list = await db.getAllKontak();

    //ada perubahan state
    setState(() {
      //hapus data pada listKontak
      listKontak.clear();

      //lakukan perulangan pada variabel list
      list!.forEach((kontak) {
        //masukan data ke listKontak
        listKontak.add(Kontak.fromMap(kontak));
      });
    });
  }

  //menghapus data Kontak
  Future<void> _deleteKontak(Kontak kontak, int position) async {
    await db.deleteKontak(kontak.id!);
    setState(() {
      listKontak.removeAt(position);
    });
  }

  // membuka halaman tambah Kontak
  Future<void> _openFormCreate() async {
    var result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => Formkontak()));
    if (result == 'save') {
      await _getAllKontak();
    }
  }

  //membuka halaman edit Kontak
  Future<void> _openFormEdit(Kontak kontak) async {
    var result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Formkontak(kontak: kontak,)));
    if (result == 'update') {
      await _getAllKontak();
    }
  }
}