import 'package:edutech/Screens/Widgets.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorHomeScreen extends StatelessWidget {
  const InstructorHomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/InstructorHome';

  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorHomeScreen());
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
            backgroundColor: Colors.black,
            elevation: 0.0,
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
              preferredSize: Size.fromHeight(height / 7.0),
              child: Container(
                // height: height * 12,
                padding: EdgeInsets.only(
                    left: width * 0.04,
                    right: width * 0.04,
                    bottom: width * 0.04),
                child: Row(
                  children: [
                    SizedBox(width: width * 0.1),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        backgroundImage: AssetImage("assets/yash.jpeg"),
                        radius: width * 0.08,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.04),
                      child: Text(
                        'Yash Patel',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.06,
                            color: orange),
                      ),
                    )
                  ],
                ),
                // Column(
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.symmetric(horizontal: width * 0.18),
                //       child: Text(
                //         'LOREM IPSUM LOREM IPSUM LOREM IPSUM',
                //         textAlign: TextAlign.center,
                //         style: GoogleFonts.poppins(
                //             fontWeight: FontWeight.bold,
                //             fontSize: width * 0.04,
                //             color: Colors.white),
                //       ),
                //     ),
                //     Card(
                //       // elevation: 4,
                //       // shadowColor: lightBlue,
                //       shape: OutlineInputBorder(
                //         borderRadius:
                //             BorderRadius.only(bottomRight: Radius.circular(20)),
                //       ),
                //       child: TextFormField(
                //         style: GoogleFonts.openSans(
                //             fontSize: width * 0.04, color: Colors.white),
                //         decoration: InputDecoration(
                //           fillColor: lightGrey,
                //           filled: true,
                //           contentPadding: EdgeInsets.zero,
                //           prefixIcon: Container(
                //             decoration: BoxDecoration(
                //                 color: lightGrey, border: Border.all(width: 1)),
                //             margin: EdgeInsets.only(right: width * 0.01),
                //             width: width * 0.1,
                //             child: Icon(
                //               Icons.search,
                //               color: Colors.white,
                //             ),
                //           ),

                //           hintText: 'Search',

                //           hintStyle: GoogleFonts.openSans(
                //               fontWeight: FontWeight.w300,
                //               fontSize: width * 0.04,
                //               color: Colors.white),

                //           enabledBorder: OutlineInputBorder(
                //             borderSide: BorderSide(width: 1, color: lightGrey),
                //             borderRadius: BorderRadius.only(
                //                 bottomRight: Radius.circular(20)),
                //           ),
                //           // focusColor: purple,
                //           focusedBorder: OutlineInputBorder(
                //             borderSide: BorderSide(color: lightGrey, width: 1),
                //             borderRadius: BorderRadius.only(
                //                 bottomRight: Radius.circular(20)),
                //           ),
                //           border: OutlineInputBorder(
                //             borderSide: BorderSide(width: 1, color: lightGrey),
                //             borderRadius: BorderRadius.only(
                //                 bottomRight: Radius.circular(20)),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  left: width * 0.04,
                  right: width * 0.04,
                  top: width * 0.02,
                  bottom: width * 0.02),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Courses',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04,
                            color: Colors.white),
                      ),
                      Text(
                        'See All',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  //SizedBox(height: width * 0.01),
                  Container(
                    height: height * 0.55,
                    padding:
                        EdgeInsets.only(top: width * 0.05, right: width * 0.03),
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            GestureDetector(
                              // onTap: () => Navigator.of(context).pushNamed(
                              //     LearnerCourseDetailScreen.routeName),
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
                  Container(
                    width: width,
                    height: width * 0.1,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(darkGrey)),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed("/InstructorCreateCourse");
                        },
                        child: Text(
                          "Create Course",
                          style: GoogleFonts.montserrat(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class InstructorCourseCard extends StatelessWidget {
  const InstructorCourseCard({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //  Navigator.of(context).pushNamed(LearnerCourseDetailScreen.routeName),
      },
      child: Container(
        height: width * 0.4,
        width: width * 0.42,
        child: Card(
          color: Colors.black,
          // elevation: 10.0,
          // shadowColor: lightBlue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: width * 0.15,
                width: width,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('assets/coursebg.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: width * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                child: Text(
                  'Web Development',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.02,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                child: Text(
                  'Advance UI/UX Courses',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: width * 0.03,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                child: Text(
                  'Robert Jenson',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.02,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: width * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: width * 0.04,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
