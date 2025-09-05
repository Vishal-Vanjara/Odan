import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Show about dialog box"),
          onPressed: (){
            showDialog(
              context: context,
              builder: (context) => AboutDialog(
                applicationIcon: FlutterLogo(),
                applicationLegalese: 'legalese',
                applicationName: 'Flutter App',
                applicationVersion:'version 1.0.0',
                children: [
                  Text('This is a text crated by flutter app')
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}