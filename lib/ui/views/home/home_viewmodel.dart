import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _hi = 'Hi, Andi';
  String get hi => _hi;

  DateTime _dateTime = new DateTime.now();

  String get waktu {
    String jam = _dateTime.hour.toString();
    String menit = _dateTime.minute.toString();

    if (jam.length == 1) {
      jam = '0' + jam;
    }

    if (menit.length == 1) {
      menit = '0' + menit;
    }

    return jam + ':' + menit;
  }

  String get tanggal {
    var _days = [
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
      'Minggu'
    ];
    var _months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'Sepetember',
      'Oktober',
      'November',
      'Desember',
    ];
    String _hari = _days[_dateTime.weekday - 1];
    String _tanggal = _dateTime.day.toString();
    String _bulan = _months[_dateTime.month - 1];
    String _tahun = _dateTime.year.toString();

    return _hari + ', ' + _tanggal + ' ' + _bulan + ' ' + _tahun;
  }

  void onPressedMasukButton() {}
}
