import 'package:flutter/material.dart';
import 'cat_fact_model.dart';
import 'cat_fact_service.dart';

class CatFactScreen extends StatefulWidget {
  const CatFactScreen({super.key});

  @override
  State<CatFactScreen> createState() => _CatFactScreenState();
}

class _CatFactScreenState extends State<CatFactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Cat Fact"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                future: _futureCatFact,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text(
                      'Error : ${snapshot.error}',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    );
                  } else if (snapshot.hasData) {
                    return Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          snapshot.data!.fact,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic),
                        ),
                      ),
                    );
                  }
                  return Text('Ready for a fact...');
                },
              ),
              const SizedBox(height: 50),
              // Button to trigger the refresh
              ElevatedButton.icon(
                onPressed: _getNewFact,
                icon: const Icon(Icons.refresh),
                label: const Text('Get Another Fact',
                    style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
