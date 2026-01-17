class Trip {
  String namaTrip;
  String tanggalMulai;
  String tanggalAkhir;

  // Constructor
  Trip({
    required this.namaTrip,
    required this.tanggalMulai,
    required this.tanggalAkhir,
  });

  Map<String, dynamic> toJson() {
    return {
      'namaTrip': namaTrip,
      'tanggalMulai': tanggalMulai,
      'tanggalAkhir': tanggalAkhir,
    };
  }

  factory Trip.fromJson(Map<String, dynamic> json) {
    return Trip(
      namaTrip: json['namaTrip'],
      tanggalMulai: json['tanggalMulai'],
      tanggalAkhir: json['tanggalAkhir'],
    );
  }
}