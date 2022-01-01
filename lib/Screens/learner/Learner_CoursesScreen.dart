import 'package:edutech/Screens/Widgets.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerCoursesScreen extends StatelessWidget {
  const LearnerCoursesScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerCourses';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerCoursesScreen());
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: lightGrey,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.black,
            leading: GestureDetector(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Icon(Icons.menu, size: width * 0.06)),
            actions: [
              GestureDetector(
                onTap: () {
                  //TO Do
                },
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.03),
                  child: Icon(Icons.mail, size: width * 0.06),
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(height / 7),
              child: Container(
                // height: height * 12,
                padding: EdgeInsets.only(
                    left: width * 0.04,
                    right: width * 0.04,
                    bottom: width * 0.02),
                child: Column(
                  children: [
                    Text(
                      'FIND YOUR COURSE HERE',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.04,
                          color: Colors.white),
                    ),
                    Card(
                      // elevation: 4,
                      // shadowColor: lightBlue,
                      shape: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(20)),
                      ),
                      child: TextFormField(
                        style: GoogleFonts.openSans(
                            fontSize: width * 0.04, color: Colors.white),
                        decoration: InputDecoration(
                          fillColor: lightGrey,
                          filled: true,
                          contentPadding: EdgeInsets.zero,
                          prefixIcon: Container(
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            margin: EdgeInsets.only(right: width * 0.01),
                            width: width * 0.1,
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),

                          hintText: 'Search',

                          hintStyle: GoogleFonts.openSans(
                              fontWeight: FontWeight.w300,
                              fontSize: width * 0.04,
                              color: Colors.white),

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: lightGrey),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                          ),
                          // focusColor: purple,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGrey, width: 1),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: lightGrey),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  left: width * 0.04,
                  //right: width * 0.04,
                  top: width * 0.02,
                  bottom: width * 0.02),
              child: Column(
                children: [
                  Container(
                    height: height * 0.09,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: width * 0.2,
                          width: width * 0.4,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.025),
                          margin: EdgeInsets.symmetric(vertical: width * 0.01),
                          child: Card(
                            color: darkGrey,
                            //shadowColor: lightBlue,
                            // elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "Development",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: height,
                    padding:
                        EdgeInsets.only(top: width * 0.05, right: width * 0.03),
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(context).pushNamed(
                                  LearnerCourseDetailScreen.routeName),
                              child: Container(
                                height: width * 0.33,
                                width: width,
                                child: Card(
                                  //elevation: 10,
                                  //shadowColor: lightBlue,
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Card(
                                        margin: EdgeInsets.zero,
                                        // color: lightGrey,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
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
                                              horizontal: width * 0.02,
                                              vertical: width * 0.01),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Web Development',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  width * 0.03,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    Icon(Icons.favorite,
                                                        color: Colors.red),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Advance UI/UX Courses',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Text(
                                                'Robert Jenson',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: width * 0.025,
                                                    color: Colors.white),
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
                                                child: Text(
                                                  '₹ 500',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: width * 0.06,
                                                      color: Colors.white),
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
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
