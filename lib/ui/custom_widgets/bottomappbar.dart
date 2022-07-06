import 'package:flutter/material.dart';

import '../../enums/colors.dart';

Widget customBottomAppBar(BuildContext context, dynamic model) {
  return BottomAppBar(
    color: WartaColors.blue,
    child: IconTheme(
      data: IconThemeData(
        color: WartaColors.primary400(),
      ),
      child: Container(
        padding: EdgeInsets.all(0),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            iconButton(
                'Home', Icons.home, model.onClickHome, model.homeSelected),
            iconButton(
                'Maps', Icons.map, model.onClickMaps, model.mapsSelected),
            iconButton('Notification', Icons.notifications,
                model.onClickNotification, model.notificationSelected),
            iconButton('Profile', Icons.person, model.onClickProfile,
                model.profileSelected),
          ],
        ),
      ),
    ),
  );
}

Widget iconButton(
    String tooltip, IconData icon, dynamic function, bool active) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(
          top: 5,
          bottom: 0,
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(
            minWidth: 32,
            minHeight: 32,
          ),
          onPressed: function,
          tooltip: tooltip,
          icon: Icon(
            icon,
            size: active ? 32.0 : 28.0,
            color: active ? WartaColors.primary500() : WartaColors.primary400(),
          ),
        ),
      ),
      buttonText(tooltip, active),
    ],
  );
}

Text buttonText(String text, bool active) {
  return Text(
    text,
    style: TextStyle(
      color: active ? WartaColors.primary500() : WartaColors.primary400(),
      fontWeight: active ? FontWeight.bold : FontWeight.normal,
    ),
  );
}
