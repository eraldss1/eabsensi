import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'maps_viewmodel.dart';

class MapsView extends StatelessWidget {
  const MapsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MapsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(
            'Maps View',
          ),
        ),
      ),
      viewModelBuilder: () => MapsViewModel(),
    );
  }
}
