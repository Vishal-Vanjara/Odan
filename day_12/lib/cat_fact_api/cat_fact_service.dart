import 'dart:convert';
import 'package:http/http.dart' as http;
import 'cat_fact_model.dart';

Future<CatFact> fetchCatFact() async{
  const String apiUrl = 'https://catfact.ninja/fact';
  final response = await http.get(Uri.parse(apiUrl));

  if(response.statusCode == 200){
    return CatFact.fromJson(jsonDecode(response.body) as Map<String,dynamic>);
  }else{
    throw Exception('Failed to land cat fact. Status code: ${response.statusCode}');
  }
}