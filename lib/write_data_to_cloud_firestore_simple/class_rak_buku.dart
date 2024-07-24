import 'dart:convert';

ClassBuku classBuku(String str) => ClassBuku.fromJson(json.decode(str));

String classBukuToJson(ClassBuku data) => json.encode(data.toJSon());

class ClassBuku {
  final String penulis;
  final String judulBuku;
  final DateTime tanggalTerbit;
  final int jumlahStokBuku;

  ClassBuku({
    required this.penulis,
    required this.judulBuku,
    required this.tanggalTerbit,
    required this.jumlahStokBuku,
  });

  factory ClassBuku.fromJson(Map<String, dynamic> json) => ClassBuku(
        penulis: json["penulis"],
        judulBuku: json["judul_buku"],
        tanggalTerbit: DateTime.parse(json["tanggal_terbit"]),
        jumlahStokBuku: json["jumlah_stok_buku"],
      );

  Map<String, dynamic> toJSon() => {
        "penulis": penulis,
        "judul_buku": judulBuku,
        "tanggal_terbit": tanggalTerbit.toIso8601String(),
        "jumlah_stok_buku": jumlahStokBuku,
      };
}
