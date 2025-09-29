import 'dart:convert';
import 'package:flutter/material.dart';
import 'sport_model.dart';
import 'package:http/http.dart' as http;

class SportApp extends StatefulWidget {
  const SportApp({super.key});

  @override
  State<SportApp> createState() => _SportAppState();
}

class _SportAppState extends State<SportApp> {
  Future<SportModel> fetchSports() async {
    final url = "https://www.thesportsdb.com/api/v1/json/3/all_sports.php";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> result = jsonDecode(response.body);
      return SportModel.fromJson(result);
    } else {
      return SportModel(sports: []);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sport API"),
        centerTitle: true,
      ),
      body: FutureBuilder<SportModel>(
        future: fetchSports(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.sports == null || snapshot.data!.sports!.isEmpty) {
            return const Center(child: Text("No sports available"));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.sports!.length,
              itemBuilder: (context, index) {
                final sport = snapshot.data!.sports![index];
                return ListTile(
                  leading: (sport.strSportThumb != null && sport.strSportThumb!.isNotEmpty)
                      ? CircleAvatar(
                    backgroundImage: NetworkImage(sport.strSportThumb!),
                  )
                      : const CircleAvatar(child: Icon(Icons.sports)),
                  title: Text(sport.strSport ?? "Unknown Sport"),
                );
              },
            );
          }
        },
      ),
    );
  }
}
