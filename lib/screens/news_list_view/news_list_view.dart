import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/news_list_view/custom_app_bar/app_bar_widget.dart';
import 'package:flutter_news_app/screens/news_list_view/custom_app_bar/search_bar_widget.dart';
import 'package:flutter_news_app/screens/news_list_view/news_card.dart';
import 'package:flutter_news_app/screens/news_list_view/news_categories_scroll.dart';

class NewsListView extends StatelessWidget {
  final List<NewsCardWidget> li = [
    NewsCardWidget(
      imageLocation: 'assets/images/plane_boarding.jpg',
    ),
    // NewsCardWidget(
    //   imageLocation: 'assets/images/profile_image.jpg',
    // ),
    NewsCardWidget(
      imageLocation: 'assets/images/london_street.jpg',
    ),
    NewsCardWidget(
      imageLocation: 'assets/images/apple_lap.jpg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.beenhere,
              color: Color.fromARGB(255, 186, 186, 186),
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.menu, color: Color.fromARGB(255, 186, 186, 186)),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.bookmark_border,
                color: Color.fromARGB(255, 186, 186, 186)),
          ),
        ],
      ),
      body: SafeArea(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 250, 250),
          ),
          child: SizedBox.expand(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppBarWidget(),
                    SearchBarWidget(),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30.0),
                      height: 30.0,
                      child: NewsCategoriesScrollWiget(),
                      // ),
                    ),
                    Expanded(
                      child: SizedBox.expand(
                        child: ListView.separated(
                          itemBuilder: (ctx, index) => li[index],
                          itemCount: li.length,
                          separatorBuilder: (ctx, index) =>
                              SizedBox(height: 30.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
