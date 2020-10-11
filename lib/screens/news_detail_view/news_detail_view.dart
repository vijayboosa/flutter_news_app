import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/news_models.dart';

class NewsDeatilview extends StatelessWidget {
  final NewsArticle newsArticle;

  const NewsDeatilview({Key key, this.newsArticle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(newsArticle.headline),
          Text('${newsArticle.postedBy} ${newsArticle.postedDate}'),
          Expanded(
            child: Row(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
