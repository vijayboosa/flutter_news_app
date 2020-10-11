import 'package:flutter/material.dart';

class NewsCardWidget extends StatelessWidget {
  final String imageLocation;

  const NewsCardWidget({Key key, this.imageLocation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.0,
      width: double.infinity,
      child: CardItem(
        imageLocation: imageLocation,
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String imageLocation;

  const CardItem({Key key, this.imageLocation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              imageLocation,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'How Corona Virus Could Change Plane Boarding',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 23.0,
                  color: Color.fromARGB(255, 56, 56, 56),
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
                    child: Text(
                      'Travel',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
                    child: Text(
                      'World',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
