class IteneraryItem {
  String lokasi;
  String waktu;
  String catatan;
  String idTrip;

  IteneraryItem({
    required this.lokasi,
    required this.waktu,
    required this.catatan,
    required this.idTrip,
  });

  Map<String, dynamic> toJson() {
    return {
      'lokasi': lokasi,
      'waktu': waktu,
      'catatan': catatan,
      'idTrip': idTrip,
    };
  }

  factory IteneraryItem. fromJson(Map<String, dynamic> json) {
    return IteneraryItem(
      lokasi: json['lokasi'],
      waktu: json['waktu'],
      catatan: json['catatan'],
      idTrip: json['idTrip'],
    );
  }
}