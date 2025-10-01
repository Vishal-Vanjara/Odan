import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'news_model.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  Future<NewsModel> fetchNews() async {
    final url =
        "https://newsapi.org/v2/everything?q=tesla&from=2025-08-23&sortBy=publishedAt&apiKey=39de21a055364242b70f11711c79bdba";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      if (result["status"] == "ok") {
        return NewsModel.fromJson(result);
      } else {
        return NewsModel(articles: []); // avoid null crash
      }
    } else {
      return NewsModel(articles: []); // also avoid null crash
    }

    // if (response.statusCode == 200) {
    //   final result = jsonDecode(response.body);
    //   return NewsModel.fromJson(result);
    // } else {
    //   return NewsModel();
    // }
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        centerTitle: true,
      ),

      body: FutureBuilder<NewsModel>(
        future: fetchNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.articles == null) {
            return const Center(child: Text("No news available"));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.articles!.length,
              itemBuilder: (context, index) {
                final article = snapshot.data!.articles![index];
                return ListTile(
                  leading: article.urlToImage != null
                      ? CircleAvatar(
                          backgroundImage: NetworkImage(article.urlToImage!),
                        )
                      : const CircleAvatar(child: Icon(Icons.image)),
                  title: Text(article.title ?? "No Title"),
                  subtitle: Text(article.description ?? "No Description"),
                );
              },
            );
          }
        },
      ),

      // Older Version of code------------------->

      // body: FutureBuilder(
      //     future: fetchNews(),
      //     builder: (context, snapshot) {
      //       return ListView.builder(
      //         itemBuilder: (context, index) {
      //           var article;
      //           return ListTile(
      //
      //             leading: article.urlToImage != null
      //                 ? CircleAvatar(backgroundImage: NetworkImage(article.urlToImage!))
      //                 : const CircleAvatar(child: Icon(Icons.image)),
      //             title: Text(article.title ?? "No Title"),
      //             subtitle: Text(article.description ?? "No Description"),
      //
      //             // leading: CircleAvatar(
      //             //   backgroundImage: NetworkImage(
      //             //       "${snapshot.data!.articles![index].urlToImage}"),
      //             // ),
      //             // title: Text("${snapshot.data!.articles![index].title}"),
      //             // subtitle:
      //             //     Text("${snapshot.data!.articles![index].description}"),
      //           );
      //         },
      //         itemCount: snapshot.data!.articles!.length,
      //       );
      //     }),
    );
  }
}
