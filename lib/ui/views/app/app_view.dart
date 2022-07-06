import '../maps/maps_view.dart';
import '../notification/notification_view.dart';
import '../profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../custom_widgets/bottomappbar.dart';
import '../home/home_view.dart';
import 'app_viewmodel.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.homeSelected
            ? HomeView()
            : model.mapsSelected
                ? MapsView()
                : model.notificationSelected
                    ? NotificationView()
                    : ProfileView(),
        appBar: AppBar(
          title: new Text('E-Absensi'),
        ),
        bottomNavigationBar: customBottomAppBar(context, model),
      ),
      viewModelBuilder: () => AppViewModel(),
    );
  }
}
