class TokoRoti {
  String nama;
  int? harga;

  TokoRoti({required this.nama, this.harga});

  String keterangan() {
    return 'Nama: $nama\nHarga: Rp ${harga ?? 0}';
  }
}
