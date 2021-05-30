import 'package:customappbar/components/art_card.dart';
import 'package:customappbar/layout/main_layout.dart';
import 'package:customappbar/models/article_data.dart';
import 'package:flutter/material.dart';

import 'package:customappbar/service/newsapi.dart';

class ArticleScreen extends StatelessWidget {
  final art=NewsApiService();
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: FutureBuilder(
            future:art.getArticle(),
          builder: (context,snapshot){
            //print(snapshot.data);
              if(snapshot.connectionState==ConnectionState.done){
                return ListView.builder(
                  itemCount: snapshot.data.articles.length,
                    itemBuilder: (BuildContext context,int value){
                   return ArtCard(author: snapshot.data.articles[value].author,title: snapshot.data.articles[value].title,description: snapshot.data.articles[value].description,image: snapshot.data.articles[value].urlToImage,publishDate: snapshot.data.articles[value].publishedAt.toString(),);
                });
              }
              else{
                return const Center(child: CircularProgressIndicator());
              }

          },


        )
      ),
    );
  }
}
