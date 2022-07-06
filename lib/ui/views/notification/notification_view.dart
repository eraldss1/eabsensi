import 'package:ewartagbkp/ui/custom_widgets/spacer.dart';
import 'package:ewartagbkp/ui/custom_widgets/titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stacked/stacked.dart';

import 'notification_viewmodel.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: h1('Periode'),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: h4('01- November 2019 / 31 Desember 2019'),
            ),

            // -----
            Padding(padding: EdgeInsets.all(5)),
            divider(double.infinity),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              child: h4('Senin, 02 November 2019'),
              padding: EdgeInsets.only(left: 10),
            ),

            Padding(padding: EdgeInsets.all(3)),
            divider(200),

            Padding(padding: EdgeInsets.all(3)),
            Container(
              child: h4('08:30:47'),
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              child: h4('Masuk'),
              padding: EdgeInsets.only(left: 10),
            ),

            Padding(padding: EdgeInsets.all(3)),
            divider(200),

            Padding(padding: EdgeInsets.all(3)),
            Container(
              child: h4('17:15:06'),
              padding: EdgeInsets.only(left: 10),
            ),

            Container(
              child: h4('Keluar'),
              padding: EdgeInsets.only(left: 10),
            ),

            Padding(padding: EdgeInsets.all(5)),
            divider(double.infinity),
            Padding(padding: EdgeInsets.all(5)),
            // ------
          ],
        ),
      ),
      viewModelBuilder: () => NotificationViewModel(),
    );
  }
}
