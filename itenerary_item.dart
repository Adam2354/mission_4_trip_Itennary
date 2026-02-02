// 💎 KEREN! Class IteneraryItem sudah lengkap dengan properti yang dibutuhkan.
// 🧐 Sedikit catatan: "Itenerary" biasanya dieja "Itinerary", tapi ini hal kecil kok!
class IteneraryItem {
  String lokasi;
  String waktu;
  String catatan;
  String idTrip;

  // 🔥 Penggunaan constructor sudah sangat konsisten. Mantap!
  IteneraryItem({
    required this.lokasi,
    required this.waktu,
    required this.catatan,
    required this.idTrip,
  });

  // 📦 Konversi ke JSON (Map) sudah aman dan benar.
  Map<String, dynamic> toJson() {
    return {
      'lokasi': lokasi,
      'waktu': waktu,
      'catatan': catatan,
      'idTrip': idTrip,
    };
  }

  // 🔄 Factory method fromJson juga fungsional.
  // ⚠️ Ada sedikit spasi berlebih di penulisan ". fromJson", tapi kodenya tetap jalan!
  factory IteneraryItem. fromJson(Map<String, dynamic> json) {
    return IteneraryItem(
      lokasi: json['lokasi'],
      waktu: json['waktu'],
      catatan: json['catatan'],
      idTrip: json['idTrip'],
    );
  }
}
// 🌈 Terus semangat! Logika serialization kamu sudah sangat kuat.