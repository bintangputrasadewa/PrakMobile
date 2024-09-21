class TokoRoti {
  String nama;
  int? harga;

  TokoRoti({required this.nama, this.harga});

  // Menggunakan Null Safety dan Null Conditional
  String keterangan() {
    return 'Nama: $nama\nHarga: Rp ${harga ?? 0}';
  }
}
