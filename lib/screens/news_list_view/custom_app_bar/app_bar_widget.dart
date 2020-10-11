import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/logo.jpg',
            scale: 10.0,
          ),
          SizedBox(
            width: 13.0,
          ),
          Text(
            'NewsFeed',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/profile_image.jpeg',
            ),
            radius: 30.0,
          )
        ],
      ),
    );
  }
}
