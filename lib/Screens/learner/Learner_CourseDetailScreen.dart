import 'dart:ui';

import 'package:edutech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerCourseDetailScreen extends StatefulWidget {
  const LearnerCourseDetailScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerCourseDetail';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerCourseDetailScreen());
  }

  @override
  _LearnerCourseDetailScreenState createState() =>
      _LearnerCourseDetailScreenState();
}

class _LearnerCourseDetailScreenState extends State<LearnerCourseDetailScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 0);
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
      body: Stack(
        children: [
          Container(
            height: height * 0.30,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/coursebg.jpg"),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              actions: [
                GestureDetector(
                  onTap: () {
                    //TO Do
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: Icon(Icons.favorite,
                        color: Colors.red, size: width * 0.06),
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(height / 5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.35,
                        alignment: Alignment.center,
                        color: lightGrey,
                        child: Text(
                          'WEB DEVELOPMENT',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: width * 0.02),
                      Text(
                        'ADVANCE UI/UX COURSES',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: width * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.videocam,
                                color: Colors.white,
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                '12 Videos',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: width * 0.055,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.white,
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                '5h 12Min',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: width * 0.055,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: width * 0.04),
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                children: [
                  //SizedBox(height: width * 0.02),
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: orange, width: 2)),
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
                                'About',
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
                                'Modules',
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
                                'Instructor',
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
                                'Review',
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
                              _aboutCourse(width),
                              _modules(width),
                              _instructor(width),
                              Container(
                                // height: height,
                                // width: width,
                                child: Column(
                                  children: [
                                    SizedBox(height: width * 0.02),
                                    TextFormField(
                                      // controller: _reviews,
                                      keyboardType: TextInputType.name,
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: width * 0.04),
                                      decoration: InputDecoration(
                                        labelText: 'Write Review',
                                        labelStyle: GoogleFonts.raleway(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: width * 0.04),
                                        filled: true,
                                        fillColor: darkGrey,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color: darkGrey),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        // focusColor: purple,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: darkGrey, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: darkGrey),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: width * 0.02),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.02),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RatingBar.builder(
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              setState(() {
                                                // _rating = rating;
                                              });
                                              print(rating);
                                            },
                                          ),
                                          Container(
                                            height: width * 0.12,
                                            child: MaterialButton(
                                                elevation: 0.0,
                                                color: darkGrey,
                                                onPressed: () async {},
                                                child: Text(
                                                  'Submit',
                                                  style: GoogleFonts.raleway(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: Colors.white,
                                                      fontSize: width * 0.025),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: darkGrey.withOpacity(0.50),
                                      thickness: 1,
                                    ),
                                    _review(width, height),
                                  ],
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomSheet: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.16),
                    spreadRadius: 5,
                    blurRadius: 20,
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              height: height * 0.09,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(darkGrey)),
                    onPressed: () {
                      _showPaymentDonePopup(context, width, height);
                      // Navigator.of(context).pushNamed("/LearnerModuleList");
                    },
                    child: Text(
                      'ENROLL NOW',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.04,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    '₹ 500',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.06,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _modules(double width) {
    return Container(
        child: Column(
      children: [
        SizedBox(height: width * 0.04),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: width * 0.02),
          color: darkGrey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Class 1',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.09),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: width * 0.035,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: width * 0.04),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: width * 0.02),
          color: darkGrey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Class 2',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.09),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: width * 0.035,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: width * 0.04),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: width * 0.02),
          color: darkGrey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Class 3',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.09),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: width * 0.035,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
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
        itemCount: 10,
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

  Container _instructor(double width) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: width * 0.04),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: CircleAvatar(
                    radius: width * 0.1,
                    backgroundImage: AssetImage('assets/robert.jpg'),
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
                    Text(
                      'Robert Jenson',
                      style: GoogleFonts.poppins(
                          color: orange,
                          fontSize: width * 0.055,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Web Development',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: width * 0.038,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: width * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: Colors.white,
                          size: width * 0.04,
                        )
                      ],
                    ),
                    SizedBox(height: width * 0.01),
                    Row(
                      children: [
                        Icon(
                          Icons.reviews,
                          color: Colors.amber,
                          size: width * 0.04,
                        ),
                        SizedBox(width: width * 0.01),
                        Text(
                          '15 Reviews',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.book_sharp,
                          color: Colors.amber,
                          size: width * 0.04,
                        ),
                        SizedBox(width: width * 0.01),
                        Text(
                          '12 Courses',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: width * 0.04),
          Text(
            'About Instructor',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.05,
                color: orange),
          ),
          SizedBox(height: width * 0.02),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
                fontSize: width * 0.035,
                color: Colors.white),
          ),
          SizedBox(height: width * 0.02),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
                fontSize: width * 0.03,
                color: Colors.white),
          ),
          SizedBox(height: width * 0.02),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
                fontSize: width * 0.03,
                color: Colors.white),
          ),
        ],
      ),
    );
  }

  Container _aboutCourse(double width) {
    return Container(
      padding: EdgeInsets.only(top: width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Course',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.05,
                color: orange),
          ),
          SizedBox(height: width * 0.02),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
                fontSize: width * 0.035,
                color: Colors.white),
          ),
          SizedBox(height: width * 0.02),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
                fontSize: width * 0.035,
                color: Colors.white),
          ),
          SizedBox(height: width * 0.04),
          Text(
            'What you’ll learn',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.05,
                color: orange),
          ),
          SizedBox(height: width * 0.02),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
                fontSize: width * 0.035,
                color: Colors.white),
          ),
          SizedBox(height: width * 0.02),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
                fontSize: width * 0.035,
                color: Colors.white),
          ),
        ],
      ),
    );
  }

  _showPaymentDonePopup(BuildContext context, double width, double height) {
    return showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.transparent,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                width: width,
                height: height,
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height * 0.06),
                        Image.asset(
                          "assets/successful.png",
                          width: width * 0.35,
                          height: width * 0.35,
                          color: Colors.white,
                        ),
                        SizedBox(height: height * 0.04),
                        Text(
                          'Payment Successful',
                          style: GoogleFonts.montserrat(
                              fontSize: height * 0.032,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          'You can Start your Course Now',
                          style: GoogleFonts.montserrat(
                              fontSize: height * 0.026,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(height: height * 0.03),
                        Container(
                          margin: EdgeInsets.only(
                              left: width * 0.14, right: width * 0.14),
                          width: width * 0.38,
                          height: width * 0.12,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(darkGrey)),
                              onPressed: () {
                                // Navigator.of(context).pop();
                                Navigator.of(context)
                                    .pushNamed("/LearnerModuleList");
                              },
                              child: Text(
                                'Continue',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.06,
                                ),
                              )),
                        ),
                      ],
                    )),
              ),
            ),
          );
        });
  }
}
