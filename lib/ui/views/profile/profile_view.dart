import 'package:ewartagbkp/ui/custom_widgets/spacer.dart';
import 'package:ewartagbkp/ui/custom_widgets/titles.dart';

import '../../custom_widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              width: 200,
              height: 200,
              child: CircleAvatar(
                backgroundImage: AssetImage(model.profile),
              ),
            ),
            h1('Andi'),
            h3('Active'),
            Padding(padding: EdgeInsets.all(10)),
            divider(double.infinity),
            Padding(padding: EdgeInsets.all(10)),
            textWithDivider('Nama', 'Andi'),
            textWithDivider('NIP', 'XXX-XXXXX'),
            textWithDivider('Unit', '-'),
            Padding(padding: EdgeInsets.all(10)),
            divider(double.infinity),
            Padding(padding: EdgeInsets.all(10)),
            createButton('Ubah Password', model.onPressedUbahPasswordButton),
            createButton('Keluar', model.onPressedKeluarButton),
          ],
        ),
      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }

  Widget textWithDivider(String a, String b) {
    return Row(
      children: [
        Container(
          width: 70,
          child: h3(a),
        ),
        Container(
          width: 10,
          child: h3(':'),
        ),
        h3(b),
      ],
    );
  }
}
