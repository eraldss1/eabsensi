import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../enums/colors.dart';
import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, model, child) => Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: WartaColors.primary300op(0.4),
            ),
            headertext(context, model.title, Colors.white, true),
            headertext(context, model.title, WartaColors.primary200(), false),
          ],
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }

  Widget headertext(BuildContext context, String title, Color color, bool x) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.only(
        top: queryData.size.height * 0.18,
        right: x ? 5.0 : 0.0,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ),
    );
  }
}
