import 'package:flutter/material.dart';

class DetailsPage2 extends StatefulWidget {
  const DetailsPage2({Key? key}) : super(key: key);

  @override
  _DetailsPage2State createState() => _DetailsPage2State();
}

class _DetailsPage2State extends State<DetailsPage2> {
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
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/Frame_Detail.png',
                fit: BoxFit.cover,
              ),
            ),
            // Header Text & Star Rating
            Positioned(
              top: MediaQuery.of(context).size.height * 0.460,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Star Rating
                  Image.asset('assets/Star_Rating.png'),
                  // Header Text
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Graphic Design Master',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Icons, Members, and Thumbs Up
            Positioned(
              top: MediaQuery.of(context).size.height * 0.550,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    // Member Icons
                    for (int i = 0; i < randomImages.length; i++)
                      Align(
                        widthFactor: 0.5,
                        child: CircleAvatar(
                          radius: 21.5,
                          backgroundImage: AssetImage(randomImages[i]),
                        ),
                      ),
                    SizedBox(width: 25),
                    // +28K Members Text
                    Text(
                      '+28K Members',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 70),
                    // Thumbs Up Icon
                    Container(
                      width: 51,
                      height: 47,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(53, 53, 103, 100),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Image.asset('assets/Thumbs_Up.png'),
                    ),
                  ],
                ),
              ),
            ),
            // Topics and Modules
            Positioned(
              top: MediaQuery.of(context).size.height * 0.635,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Introduction Design Graphic Assets
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 373,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(62, 58, 109, 100),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Container(
                                    width: 102,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(219, 97, 161, 100),
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
                                      'Introduction Design Graphic',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
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
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 7),
                                        child: Container(
                                          width: 40,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                219, 97, 161, 100),
                                            borderRadius:
                                                BorderRadius.circular(23),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Free',
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29.5,
                        child: Image.asset('assets/Design_1.png'),
                      ),
                    ],
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 102,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 196, 101, 100),
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: Image.asset('assets/Design_2.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Fundanmental of Design',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 7),
                              child: Text(
                                '16 Minutes',
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

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 102,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(50, 106, 165, 100),
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: Image.asset('assets/Design_3.png'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Layout Design',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12, top: 7),
                            child: Text(
                              '10 Minutes',
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
                ],
              ),
            ),
          ],
        ),
      );
}
