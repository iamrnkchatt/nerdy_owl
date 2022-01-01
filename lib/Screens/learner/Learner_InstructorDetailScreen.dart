import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:google_fonts/google_fonts.dart';

class LearnerInstructorDetailScreen extends StatefulWidget {
  const LearnerInstructorDetailScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerInstructorDetail';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerInstructorDetailScreen());
  }

  @override
  State<LearnerInstructorDetailScreen> createState() =>
      _LearnerInstructorDetailScreenState();
}

class _LearnerInstructorDetailScreenState
    extends State<LearnerInstructorDetailScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          children: [
            //SizedBox(height: width * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.15,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2)),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/robert.jpg',
                      ),
                      radius: width * 0.10,
                    ),
                  ),
                  SizedBox(width: width * 0.04),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Robert Jenson",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.045,
                            color: orange),
                      ),
                      Text(
                        "Web Development",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.030,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                            color: Colors.black,
                            size: width * 0.04,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: width,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: orange, width: 2)),
              ),
              child: TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: orange,
                  unselectedLabelColor: Colors.white,
                  labelColor: orange,
                  labelPadding: EdgeInsets.zero,
                  indicatorWeight: 2,
                  indicatorPadding: EdgeInsets.zero,
                  tabs: [
                    Tab(
                      child: Container(
                        child: Text(
                          'Profile',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              //color: lightBlue,
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        //width: width,
                        child: Text(
                          'Courses',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              //color: lightBlue,
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        // width: width,
                        child: Text(
                          'Reviews',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              //color: lightBlue,
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: height,
                  child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        _profile(width, height),
                        _courses(width, height),
                        _review(width, height),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _profile(double width, double height) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: height * 0.04),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.035,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: height * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.035,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: height * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.035,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Container _courses(double width, double height) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.04),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/LearnerCourseDetail");
              },
              child: Container(
                height: width * 0.3,
                width: width,
                child: Card(
                  elevation: 10,
                  //shadowColor: lightBlue,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        margin: EdgeInsets.zero,
                        color: lightGrey,
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
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.02, vertical: width * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'Web Development',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.03,
                                      color: Colors.white),
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
                                    color: Colors.black,
                                    size: width * 0.04,
                                  )
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '₹ 500',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.06,
                                          color: Colors.white),
                                    ),
                                    SizedBox(width: width * 0.06),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  darkGrey)),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed("/LearnerModuleList");
                                      },
                                      child: Text(
                                        'ENROLL NOW',
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.025,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/LearnerCourseDetail");
              },
              child: Container(
                height: width * 0.3,
                width: width,
                child: Card(
                  elevation: 10,
                  //shadowColor: lightBlue,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        margin: EdgeInsets.zero,
                        color: lightGrey,
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
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.02, vertical: width * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'Web Development',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.03,
                                      color: Colors.white),
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
                                    color: Colors.black,
                                    size: width * 0.04,
                                  )
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '₹ 500',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.06,
                                          color: Colors.white),
                                    ),
                                    SizedBox(width: width * 0.06),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  darkGrey)),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed("/LearnerModuleList");
                                      },
                                      child: Text(
                                        'ENROLL NOW',
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.025,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _review(double width, double height) {
    return Container(
      height: height,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(height: width * 0.02),
              Divider(
                color: darkGrey.withOpacity(0.50),
                thickness: 1,
              ),
            ],
          );
        },
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // color: darkGrey,
            padding: EdgeInsets.only(top: width * 0.02),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: CircleAvatar(
                      radius: width * 0.08,
                      backgroundImage: AssetImage('assets/review1.jpg'),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.02),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pratik Gandhi',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: width * 0.03,
                              ),
                              SizedBox(width: width * 0.01),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: width * 0.03,
                              ),
                              SizedBox(width: width * 0.01),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: width * 0.03,
                              ),
                              SizedBox(width: width * 0.01),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: width * 0.03,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        '1 day ago',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: width * 0.02,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: width * 0.01),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: width * 0.025,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
