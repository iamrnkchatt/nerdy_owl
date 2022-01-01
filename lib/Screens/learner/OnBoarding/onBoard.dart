import 'package:edutech/Screens/learner/OnBoarding/content_model.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatefulWidget {
  static const String routeName = '/onBoarding';

  static Route route() {
    return MaterialPageRoute(builder: (_) => OnBoarding());
  }

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;

  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: PageView.builder(
                  controller: _controller,
                  itemCount: 3,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Stack(
                      children: [
                        // Column(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: [],
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: width * 0.15),
                            Container(
                                // margin: EdgeInsets.all(width * 0.04),
                                child: Image(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                contents[i].image,
                              ),
                            )),
                            Container(
                              padding: EdgeInsets.only(
                                left: width * 0.01,
                                right: width * 0.01,
                                //bottom: width * 0.03,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    contents[i].title,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: width * 0.045,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: width * 0.04),
                                  Text(
                                    contents[i].description,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: width * 0.035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: width * 0.1),
                            // Container(
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: List.generate(contents.length,
                            //         (index) => buildDot(index, context)),
                            //   ),
                            // ),
                            // Row(
                            //   children: [
                            //     Expanded(
                            //       child: Container(
                            //         height: height * 0.06,
                            //         margin: EdgeInsets.all(20.0),
                            //         width: width,
                            //         child: Container(
                            //           height: height * 0.02,
                            //           // width: width,
                            //           child: ElevatedButton(
                            //             onPressed: () {
                            //               Navigator.of(context)
                            //                   .pushNamed("/LearnerNav");
                            //               // _controller.nextPage(
                            //               //   duration: Duration(milliseconds: 100),
                            //               //   curve: Curves.bounceIn,
                            //               // );
                            //             },
                            //             child: Text(
                            //               'SKIP',
                            //               style: GoogleFonts.poppins(
                            //                   color: darkGrey,
                            //                   fontSize: width * 0.04,
                            //                   fontWeight: FontWeight.bold),
                            //             ),
                            //             style: ButtonStyle(
                            //               backgroundColor:
                            //                   MaterialStateProperty.all(
                            //                       Colors.white),
                            //               elevation: MaterialStateProperty.all(5),
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: Container(
                            //         height: height * 0.06,
                            //         margin: EdgeInsets.all(20.0),
                            //         width: width,
                            //         child: Container(
                            //           height: height * 0.02,
                            //           // width: width,
                            //           child: ElevatedButton(
                            //             onPressed: () {
                            //               Navigator.of(context).pushNamed(
                            //                   LearnerLoginScreen.routeName);
                            //               // _controller.nextPage(
                            //               //   duration: Duration(milliseconds: 100),
                            //               //   curve: Curves.bounceIn,
                            //               // );
                            //             },
                            //             child: Text(
                            //               'SIGN IN',
                            //               style: GoogleFonts.poppins(
                            //                   color: darkGrey,
                            //                   fontSize: width * 0.04,
                            //                   fontWeight: FontWeight.bold),
                            //             ),
                            //             style: ButtonStyle(
                            //               backgroundColor:
                            //                   MaterialStateProperty.all(
                            //                       Colors.white),
                            //               elevation: MaterialStateProperty.all(5),
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // )
                          ],
                        )
                      ],
                    );
                  }),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          contents.length, (index) => buildDot(index, context)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height * 0.06,
                          margin: EdgeInsets.all(20.0),
                          width: width,
                          child: Container(
                            height: height * 0.02,
                            // width: width,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("/LearnerNav");
                                // _controller.nextPage(
                                //   duration: Duration(milliseconds: 100),
                                //   curve: Curves.bounceIn,
                                // );
                              },
                              child: Text(
                                'SKIP',
                                style: GoogleFonts.poppins(
                                    color: darkGrey,
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                elevation: MaterialStateProperty.all(5),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: height * 0.06,
                          margin: EdgeInsets.all(20.0),
                          width: width,
                          child: Container(
                            height: height * 0.02,
                            // width: width,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(LearnerLoginScreen.routeName);
                                // _controller.nextPage(
                                //   duration: Duration(milliseconds: 100),
                                //   curve: Curves.bounceIn,
                                // );
                              },
                              child: Text(
                                'SIGN IN',
                                style: GoogleFonts.poppins(
                                    color: darkGrey,
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                elevation: MaterialStateProperty.all(5),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.white : Colors.white12,
      ),
    );
  }
}
