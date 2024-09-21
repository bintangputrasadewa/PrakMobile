import 'dart:io';
import 'toko_roti.dart';
import 'pesanan.dart';

void main() {
  List<TokoRoti> daftarRoti = [
    TokoRoti(nama: 'Roti Tawar', harga: 15000),
    TokoRoti(nama: 'Roti Manis', harga: 10000),
    TokoRoti(nama: 'Roti Apem', harga: 3000),
    TokoRoti(nama: 'Pao', harga: 20000),
    TokoRoti(nama: 'Croissant', harga: 40000),
    TokoRoti(nama: 'Pain au chocolat', harga: 55000),
    TokoRoti(nama: 'Baguette', harga: 63000),
    TokoRoti(nama: 'Pretzel', harga: 44000),
  ];
  List<Pesanan> daftarPesanan = [];

  bool berjalan = true;
  while (berjalan) {
    print('\n==========================');
    print('--- Aplikasi Toko Roti ---');
    print('==========================');
    print('| 1. Lihat Daftar Roti   |');
    print('| 2. Buat Pesanan        |');
    print('| 3. Lihat Daftar Pesanan|');
    print('| 4. Keluar              |');
    print('==========================');
    stdout.write('Masukkan pilihan Anda: ');
    String? pilihan = stdin.readLineSync();

    if (pilihan == '1') {
      print('\n====================');
      print('|    Daftar Roti   |');
      print('====================');
      daftarRoti.isEmpty
          ? print('Belum ada roti yang tersedia!')
          : daftarRoti.asMap().forEach((index, roti) {
              print('${index + 1}. ${roti.keterangan()}');
            });
    } else if (pilihan == '2') {
      print('\n====================');
      print('|    Daftar Roti   |');
      print('====================');
      daftarRoti.isEmpty
          ? print('Belum ada roti yang tersedia!')
          : daftarRoti.asMap().forEach((index, roti) {
              print('${index + 1}. ${roti.keterangan()}');
            });
      stdout.write('\nPilih nomor roti yang diinginkan: ');
      String? pilihRoti = stdin.readLineSync();
      int? nomorRoti = int.tryParse(pilihRoti ?? '');

      if (nomorRoti != null && nomorRoti > 0 && nomorRoti <= daftarRoti.length) {
        stdout.write('Masukkan nama pemesan: ');
        String? namaPemesan = stdin.readLineSync();
        stdout.write('Masukkan jumlah pesanan: ');
        String? jumlahPesanan = stdin.readLineSync();
        int? jumlah = int.tryParse(jumlahPesanan ?? '');

        if (namaPemesan != null && jumlah != null && jumlah > 0) {
          daftarPesanan.add(Pesanan(
            roti: daftarRoti[nomorRoti - 1],
            namaPemesan: namaPemesan,
            jumlah: jumlah,
          ));
          print('Pesanan telah dibuat');
        } else {
          print('Input tidak valid');
        }
      } else {
        print('Nomor roti tidak valid');
      }
    } else if (pilihan == '3') {
      print('\n====================');
      print('-- Daftar Pesanan --');
      print('====================');
      daftarPesanan.isEmpty
          ? print('Belum ada pesanan yang dibuat!')
          : daftarPesanan.asMap().forEach((index, pesanan) {
              print('${index + 1}. ${pesanan.keterangan()}');
            });
    } else if (pilihan == '4') {
      berjalan = false;
      print('Terima kasih telah menggunakan aplikasi ini.');
    } else {
      print('Pilihan tidak valid.');
    }
  }
}
