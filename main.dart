import 'dart:convert';
import 'trip.dart';
import 'itenerary_item.dart';

void main() {
  print('=== UJI COBA FUNGSI TRIP ORGANIZER SYSTEM ===\n');

  print('--- 1. Buat 1 Objek Trip ---');
  Trip trip1 = Trip(
    namaTrip: 'LIBURAN HONGKONG 2028',
    tanggalMulai: '2 Januari 2028',
    tanggalAkhir: '28 Januari 2028',
  );

  print('Objek Trip dibuat: ');
  print('Nama Trip: ${trip1.namaTrip}');
  print('Tanggal Mulai: ${trip1.tanggalMulai}');
  print('Tanggal Akhir:  ${trip1.tanggalAkhir}\n');

  print('--- 2. Ubah objek Trip ke JSON ---');
  Map<String, dynamic> tripJson = trip1.toJson();
  print('Format Map:  $tripJson');

  String tripJsonString = jsonEncode(tripJson);
  print('Format JSON String: $tripJsonString\n');

  print('--- 3. Ambil data JSON dan ubah kembali menjadi Objek ---');
  Map<String, dynamic> dataFromJson = jsonDecode(tripJsonString);
  Trip trip2 = Trip.fromJson(dataFromJson);

  print('Objek Trip hasil konversi dari JSON:');
  print('Nama Trip: ${trip2.namaTrip}');
  print('Tanggal Mulai: ${trip2.tanggalMulai}');
  print('Tanggal Akhir: ${trip2.tanggalAkhir}\n');

  print('='.padRight(50, '='));

  print('\n--- 4. Buat 1 Objek IteneraryItem ---');
  IteneraryItem item1 = IteneraryItem(
    lokasi: 'JAKARTA',
    waktu: 'JAM 8 MALAM',
    catatan: 'Makan Kerak Telor',
    idTrip: '1026',
  );

  print('Objek IteneraryItem dibuat:');
  print('Lokasi: ${item1.lokasi}');
  print('Waktu: ${item1.waktu}');
  print('Catatan: ${item1.catatan}');
  print('ID Trip: ${item1.idTrip}\n');

  print('--- 5. Ubah objek IteneraryItem ke JSON ---');
  Map<String, dynamic> itemJson = item1.toJson();
  print('Format Map: $itemJson');

  String itemJsonString = jsonEncode(itemJson);
  print('Format JSON String: $itemJsonString\n');

  print('--- 6. Ambil data JSON dan ubah kembali menjadi Objek ---');
  Map<String, dynamic> itemDataFromJson = jsonDecode(itemJsonString);
  IteneraryItem item2 = IteneraryItem.fromJson(itemDataFromJson);

  print('Objek IteneraryItem hasil konversi dari JSON:');
  print('Lokasi: ${item2.lokasi}');
  print('Waktu: ${item2.waktu}');
  print('Catatan: ${item2.catatan}');
  print('ID Trip: ${item2.idTrip}\n');

  print('=== SELESAI ===');
}
