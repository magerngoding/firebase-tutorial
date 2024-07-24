// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_tutorial/write_data_to_cloud_firestore_simple/class_rak_buku.dart';
import 'package:firebase_tutorial/write_data_to_cloud_firestore_simple/service_rak_buku.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddBukuPage extends StatefulWidget {
  const AddBukuPage({super.key});

  @override
  State<AddBukuPage> createState() => _AddBukuPageState();
}

class _AddBukuPageState extends State<AddBukuPage> {
  // Text Controller
  final TextEditingController penulisController = TextEditingController();
  final TextEditingController namaBukuController = TextEditingController();
  final TextEditingController jumlahHalamanController = TextEditingController();

  // Service
  ServiceRakBuku serviceRakBuku = ServiceRakBuku();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          // Nama Penulis
          TextField(
            controller: penulisController,
            decoration: InputDecoration(
              label: Text("Masukan nama penulis"),
            ),
          ),

          // Nama Buku
          TextField(
            controller: namaBukuController,
            decoration: InputDecoration(
              label: Text("Masukan nama buku"),
            ),
          ),

          // Jumlah halaman + input number only
          // pake input formater agar digits only
          TextField(
            controller: jumlahHalamanController,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              label: Text("Masukan jumlah halaman"),
            ),
          ),
          Spacer(),

          // Button submit
          ElevatedButton(
            onPressed: () {
              ClassBuku buku = ClassBuku(
                penulis: penulisController.text,
                judulBuku: namaBukuController.text,
                tanggalTerbit: DateTime.now(),
                jumlahStokBuku: int.parse(jumlahHalamanController.text),
              );
              serviceRakBuku.addBuku(buku);
            },
            child: Text('Tambah Data'),
          ),
        ],
      ),
    );
  }
}
