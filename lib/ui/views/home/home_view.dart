import 'package:ewartagbkp/ui/custom_widgets/titles.dart';

import '../../custom_widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: h1(model.hi),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: h2(model.waktu),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 5),
                child: h3(model.tanggal),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                color: Colors.grey,
                height: 200,
                width: 300,
              ),
            ),
            Center(child: createButton('Masuk', model.onPressedMasukButton)),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
