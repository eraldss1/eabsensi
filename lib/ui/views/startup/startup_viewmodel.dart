import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future initialise() async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 0));
    setBusy(false);

    navigateToApp();
  }

  String _title = 'E-ABSENSI';
  String get title => _title;

  void navigateToApp() {
    _navigationService.replaceWith(Routes.appView);
  }
}
