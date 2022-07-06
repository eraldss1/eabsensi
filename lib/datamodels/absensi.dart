import 'dart:convert';

class Absensi {
  DateTime date;
  String jamMasuk;
  String jamKeluar;
  Absensi({
    required this.date,
    required this.jamMasuk,
    required this.jamKeluar,
  });

  Absensi copyWith({
    DateTime? date,
    String? jamMasuk,
    String? jamKeluar,
  }) {
    return Absensi(
      date: date ?? this.date,
      jamMasuk: jamMasuk ?? this.jamMasuk,
      jamKeluar: jamKeluar ?? this.jamKeluar,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date.millisecondsSinceEpoch,
      'jamMasuk': jamMasuk,
      'jamKeluar': jamKeluar,
    };
  }

  factory Absensi.fromMap(Map<String, dynamic> map) {
    return Absensi(
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      jamMasuk: map['jamMasuk'] ?? '',
      jamKeluar: map['jamKeluar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Absensi.fromJson(String source) =>
      Absensi.fromMap(json.decode(source));

  @override
  String toString() =>
      'Absensi(date: $date, jamMasuk: $jamMasuk, jamKeluar: $jamKeluar)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Absensi &&
        other.date == date &&
        other.jamMasuk == jamMasuk &&
        other.jamKeluar == jamKeluar;
  }

  @override
  int get hashCode => date.hashCode ^ jamMasuk.hashCode ^ jamKeluar.hashCode;
}
