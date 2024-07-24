import 'dart:convert';
import 'dart:js_interop';

class ClassRakBuku {
  final String penulis;
  final String judulBuku;
  final DateTime tanggalTerbit;
  final int jumlahStokBuku;

  ClassRakBuku({
    required this.penulis,
    required this.judulBuku,
    required this.tanggalTerbit,
    required this.jumlahStokBuku,
  });

  factory ClassRakBuku.fromJson(Map<String, dynamic> json) => ClassRakBuku(
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
