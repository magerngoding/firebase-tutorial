// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class ViewDataPage extends StatefulWidget {
  ViewDataPage({Key? key}) : super(key: key);

  @override
  State<ViewDataPage> createState() => _ViewDataPageState();
}

class _ViewDataPageState extends State<ViewDataPage> {
  Future<QuerySnapshot<Map<String, dynamic>>> getRakData() async {
    // Durasi
    await Future.delayed(Duration(seconds: 2));
    return FirebaseFirestore.instance.collection('rak-buku').get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
        future: getRakData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var doc in snapshot.data!.docs)
                      Text(
                        doc['penulis'] + ' : ' + doc['judul_buku'],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Divider();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(
          Icons.refresh_rounded,
          size: 24.0,
        ),
      ),
    );
  }
}
