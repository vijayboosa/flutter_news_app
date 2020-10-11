import 'package:flutter_news_app/models/categories_model.dart';

class NewsArticle {
  final String headline;
  final String postedBy;
  final String postedDate;
  final List<Categories> listOfCategories;
  final String imageUrl;
  final bool isSaved;
  final String postUrl;

  NewsArticle(
      {this.headline,
      this.postedBy,
      this.postedDate,
      this.listOfCategories,
      this.imageUrl,
      this.isSaved,
      this.postUrl});
}
