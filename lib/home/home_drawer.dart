import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  static const int SETTINGS = 1;
  static const int CATEGORIES = 1;
  Function onSideMenuItemCallBack;
  HomeDrawer(this.onSideMenuItemCallBack);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 64,
          ),
          width: double.infinity,
          color: Theme.of(context).primaryColor,
          child: Center(
              child: Text(
            'News App',
            style: TextStyle(color: Colors.white, fontSize: 32),
          )),
        ),
        InkWell(
            onTap: () {
              onSideMenuItemCallBack(CATEGORIES);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.list),
                  Text('Categories', style: TextStyle(fontSize: 21)),
                ],
              ),
            )),
        InkWell(
            onTap: () {
              onSideMenuItemCallBack(SETTINGS);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.settings),
                  Text('Settings', style: TextStyle(fontSize: 21)),
                ],
              ),
            ))
      ],
    );
  }
}
