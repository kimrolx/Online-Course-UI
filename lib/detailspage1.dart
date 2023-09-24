import 'package:flutter/material.dart';

class DetailsPage1 extends StatefulWidget {
  const DetailsPage1({Key? key}) : super(key: key);

  @override
  _DetailsPage1State createState() => _DetailsPage1State();
}

class _DetailsPage1State extends State<DetailsPage1> {
  List<String> randomImages = [
    'assets/Image_1.png',
    'assets/Image_2.png',
    'assets/Image_3.png',
    'assets/Image_4.png',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(41, 39, 79, 100),
        body: Stack(
          children: [
            // Top Image
            Positioned(
              top: -11,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/Designer_Beginner_Image.png',
                fit: BoxFit.cover,
              ),
            ),
            // Header Text and Star Rating
            Positioned(
              top: MediaQuery.of(context).size.height * 0.460,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Text
                  Text(
                    'UI/UX Designer Beginner',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        // Star Rating
                        Text(
                          '5.0',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 6),
                        Image.asset('assets/Star_Rating.png'),
                        SizedBox(width: 17),
                        // Member Icons
                        for (int i = 0; i < randomImages.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Align(
                              widthFactor: 0.5,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(randomImages[i]),
                              ),
                            ),
                          ),
                        SizedBox(width: 10),
                        // Number of Members Text
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            '+18K Members',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Thumbs Up
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4712,
              left: 345,
              child: Container(
                width: 50,
                height: 44,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(53, 53, 103, 100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/Thumbs_Up.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.572,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 380,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 78,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(229, 195, 166, 100),
                                      borderRadius: BorderRadius.circular(23),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, top: 20),
                                    child: Text(
                                      'Introduction to UI Design',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, top: 7, bottom: 20),
                                    child: Text(
                                      '15 Minutes',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 14.5,
                        child: Image.asset('assets/Design_2.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        width: 380,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(240, 240, 240, 100),
                                      borderRadius: BorderRadius.circular(23),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, top: 20),
                                    child: Text(
                                      'UX Design Fundamentals',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, top: 7, bottom: 20),
                                    child: Text(
                                      '20 Minutes',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 14.5,
                        child: Image.asset('assets/Design_3.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        width: 380,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(216, 63, 49, 100),
                                      borderRadius: BorderRadius.circular(23),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, top: 20),
                                    child: Text(
                                      'Prototyping with Figma',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, top: 7, bottom: 20),
                                    child: Text(
                                      '12 Minutes',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28,
                        bottom: 30,
                        child: Image.asset('assets/Design_1.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
