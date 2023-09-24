import 'package:course_lists/detailspage1.dart';
import 'package:course_lists/detailspage2.dart';
import 'package:flutter/material.dart';

class CardItem {
  final String assetImage;
  final int cardID;

  CardItem({
    required this.assetImage,
    required this.cardID, // New parameter to generate cardID
  });
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardItem> cardItems = [
    CardItem(
      assetImage: 'assets/Frame_2.png',
      cardID: 1,
    ),
    CardItem(
      assetImage: 'assets/Frame_3.png',
      cardID: 2,
    ),
    CardItem(
      assetImage: 'assets/Frame_2.png',
      cardID: 3,
    ),
    CardItem(
      assetImage: 'assets/Frame_3.png',
      cardID: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(41, 39, 79, 100),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 8, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),

                      // Online Text
                      child: Text(
                        'Online',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    //Master Class Text
                    Text(
                      'Master Class',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              // Course Cards
              SingleChildScrollView(
                padding: EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var index = 0; index < cardItems.length; index++)
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: buildCard(item: cardItems[index]),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Free online class Text
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Free online class',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  // From over 80 Lectures Text
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'From over 80 Lectures',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  // Frames 4 and 5
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset('assets/Frame_4.png'),
                      ),
                      Image.asset('assets/Frame_5.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Image.asset('assets/Frame_6.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildCard({
    required CardItem item,
  }) =>
      GestureDetector(
        onTap: () {
          if (item.cardID == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsPage1()));
          } else if (item.cardID == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsPage2()));
          } else if (item.cardID == 3) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsPage1()));
          } else if (item.cardID == 4) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsPage2()));
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4.3),
          child: Column(
            children: [
              Image.asset(
                item.assetImage,
              ),
            ],
          ),
        ),
      );
}
