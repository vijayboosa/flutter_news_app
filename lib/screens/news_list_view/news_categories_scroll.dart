import 'package:flutter/material.dart';

class NewsCategoriesScrollWiget extends StatelessWidget {
  final List<String> _categories = [
    'Latest',
    "Trending",
    'Policits',
    'International',
    'Fashion',
    'Lifestyle',
    'Technology',
    'Art',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (ctx, index) {
        return SizedBox(width: 30.0);
      },
      itemBuilder: (ctx, index) {
        return Text(
          _categories[index],
          style: TextStyle(
            color: Color.fromARGB(255, 56, 56, 46),
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        );
      },
      itemCount: _categories.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
