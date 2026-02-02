// 🌟 BAGUS! Struktur class Trip sudah sangat rapi dan sesuai standar.
// 🎯 Kamu sudah berhasil mengimplementasikan properti yang diminta.
class Trip {
  String namaTrip;
  String tanggalMulai;
  String tanggalAkhir;

  // 🛠️ Constructor sudah oke, menggunakan required parameter untuk keamanan data.
  Trip({
    required this.namaTrip,
    required this.tanggalMulai,
    required this.tanggalAkhir,
  });

  // 🚀 Method toJson() sudah tepat, memudahkan konversi ke format Map.
  Map<String, dynamic> toJson() {
    return {
      'namaTrip': namaTrip,
      'tanggalMulai': tanggalMulai,
      'tanggalAkhir': tanggalAkhir,
    };
  }

  // ✨ Factory constructor fromJson() juga sudah benar dan fungsional.
  factory Trip.fromJson(Map<String, dynamic> json) {
    return Trip(
      namaTrip: json['namaTrip'],
      tanggalMulai: json['tanggalMulai'],
      tanggalAkhir: json['tanggalAkhir'],
    );
  }
}
// 💡 Tips: Kedepannya kamu bisa menambahkan validasi di dalam constructor atau fromJson!