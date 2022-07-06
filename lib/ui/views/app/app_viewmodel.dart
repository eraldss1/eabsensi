import 'package:stacked/stacked.dart';

class AppViewModel extends BaseViewModel {
  // Switch between pages displayed
  bool _homeSelected = true;
  bool get homeSelected => _homeSelected;

  bool _mapsSelected = false;
  bool get mapsSelected => _mapsSelected;

  bool _notificationSelected = false;
  bool get notificationSelected => _notificationSelected;

  bool _profileSelected = false;
  bool get profileSelected => _profileSelected;

  void onClickHome() {
    if (!_homeSelected) {
      setBusy(true);

      _homeSelected = true;
      _mapsSelected = false;
      _notificationSelected = false;
      _profileSelected = false;

      setBusy(false);
      notifyListeners();
    }
  }

  void onClickMaps() {
    if (!_mapsSelected) {
      setBusy(true);

      _homeSelected = false;
      _mapsSelected = true;
      _notificationSelected = false;
      _profileSelected = false;

      setBusy(false);
      notifyListeners();
    }
  }

  void onClickNotification() {
    if (!_notificationSelected) {
      setBusy(true);

      _homeSelected = false;
      _mapsSelected = false;
      _notificationSelected = true;
      _profileSelected = false;

      setBusy(false);
      notifyListeners();
    }
  }

  void onClickProfile() {
    if (!_profileSelected) {
      setBusy(true);

      _homeSelected = false;
      _mapsSelected = false;
      _notificationSelected = false;
      _profileSelected = true;

      setBusy(false);
      notifyListeners();
    }
  }
}
