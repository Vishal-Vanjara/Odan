
// About List Tile

import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationName: 'Flutter App',
          applicationVersion: 'version 2.0.0',
          applicationLegalese: 'Legalese',
          aboutBoxChildren: [
            Text('This is text created by widget 2')
          ],
        ),
      ),
    );
  }
}
