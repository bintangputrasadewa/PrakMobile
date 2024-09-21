import 'toko_roti.dart';

class Pesanan {
  TokoRoti roti;
  String? namaPemesan;
  int? jumlah;

  Pesanan({
    required this.roti,
    this.namaPemesan,
    this.jumlah,
  });

  String keterangan() {
    return 'Nama Pemesan: ${namaPemesan ?? 'Tidak diketahui'}\n'
           'Roti: ${roti.nama}\n'
           'Jumlah: ${jumlah ?? 0}\n'
           'Total Harga: Rp ${((jumlah ?? 0) * (roti.harga ?? 0))}';
  }
}
