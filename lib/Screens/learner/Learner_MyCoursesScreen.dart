import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LearnerMyCoursesScreen extends StatelessWidget {
  const LearnerMyCoursesScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerMyCourses';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerMyCoursesScreen());
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: lightGrey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "My Courses",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.04,
                color: Colors.white),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                //TO Do
              },
              child: Padding(
                padding: EdgeInsets.only(right: width * 0.03),
                child:
                    Icon(Icons.favorite, color: Colors.red, size: width * 0.06),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02),
              Container(
                height: width * 0.33,
                width: width,
                child: Card(
                  elevation: 10,
                  //shadowColor: lightBlue,
                  color: darkGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        margin: EdgeInsets.zero,
                        color: darkGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/coursebg.jpg',
                          // height: width * 0.3,
                          width: width * 0.25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.02, vertical: width * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Web Development',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.03,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.message,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Advance UI/UX Courses',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: width * 0.04,
                                      color: Colors.white),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star_outline,
                                            color: Colors.white,
                                            size: width * 0.04,
                                          )
                                        ],
                                      ),
                                      SizedBox(height: width * 0.02),
                                      Text(
                                        'In Progress',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.03,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: CircularPercentIndicator(
                                      radius: width * 0.1,
                                      lineWidth: width * 0.008,
                                      percent: 0.6,
                                      center: const Text(
                                        "60%",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      progressColor: orange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: width * 0.33,
                width: width,
                child: Card(
                  elevation: 10,
                  //shadowColor: lightBlue,
                  color: darkGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        margin: EdgeInsets.zero,
                        color: darkGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/coursebg.jpg',
                          // height: width * 0.3,
                          width: width * 0.25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.02, vertical: width * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Web Development',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.03,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.message,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Advance UI/UX Courses',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: width * 0.04,
                                      color: Colors.white),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star_outline,
                                            color: Colors.white,
                                            size: width * 0.04,
                                          )
                                        ],
                                      ),
                                      SizedBox(height: width * 0.02),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Download Certificate',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold,
                                                fontSize: width * 0.03,
                                                color: Colors.white),
                                          ),
                                          SizedBox(width: width * 0.02),
                                          Icon(
                                            Icons.download,
                                            size: width * 0.04,
                                            color: Colors.orange,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: CircularPercentIndicator(
                                      radius: width * 0.1,
                                      lineWidth: width * 0.008,
                                      percent: 1,
                                      center: const Text(
                                        "100%",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      progressColor: orange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: width * 0.33,
                width: width,
                child: Card(
                  elevation: 10,
                  //shadowColor: lightBlue,
                  color: darkGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        margin: EdgeInsets.zero,
                        color: darkGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/coursebg.jpg',
                          // height: width * 0.3,
                          width: width * 0.25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.02, vertical: width * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Web Development',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.03,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.message,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Advance UI/UX Courses',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: width * 0.04,
                                      color: Colors.white),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: width * 0.04,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          Icon(
                                            Icons.star_outline,
                                            color: Colors.white,
                                            size: width * 0.04,
                                          )
                                        ],
                                      ),
                                      SizedBox(height: width * 0.02),
                                      Text(
                                        'In Progress',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.03,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: CircularPercentIndicator(
                                      radius: width * 0.1,
                                      lineWidth: width * 0.008,
                                      percent: 0.1,
                                      center: const Text(
                                        "10%",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      progressColor: orange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
