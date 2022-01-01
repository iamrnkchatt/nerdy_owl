import 'package:edutech/Screens/Widgets.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorLectureListScreen extends StatelessWidget {
  const InstructorLectureListScreen({Key? key}) : super(key: key);
  static const String routeName = '/InstructorLectureList';

  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorLectureListScreen());
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
                    'SCHEDULE YOUR LECTURE HERE',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04,
                        color: Colors.white),
                  ),
                  SizedBox(height: width * 0.06),
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
                  height: height,
                  padding:
                      EdgeInsets.only(top: width * 0.05, right: width * 0.04),
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: width * 0.04);
                    },
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: width * 0.18,
                          child: ListTile(
                            minVerticalPadding: width * 0.03,
                            tileColor: darkGrey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            // leading: Container(
                            //   height: width * 0.12,
                            //   width: width * 0.12,
                            //   decoration: BoxDecoration(
                            //       shape: BoxShape.circle,
                            //       border: Border.all(
                            //           color: Colors.white, width: 2)),
                            //   child: Icon(CupertinoIcons.checkmark_seal),
                            // ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Introduction to Java",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: width * 0.04,
                                          color: orange),
                                    ),
                                    Container(
                                      height: width * 0.06,
                                      width: width * 0.15,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  lightGrey),
                                        ),
                                        onPressed: () {
                                          // Navigator.of(context)
                                          //     .pushNamed(LearnerNavScreen.routeName);
                                        },
                                        child: Text(
                                          'JOIN',
                                          style: GoogleFonts.poppins(
                                            fontSize: width * 0.02,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "12/02/2021",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.02,
                                          color: Colors.white),
                                    ),
                                    SizedBox(width: width * 0.1),
                                    Text(
                                      "10:00 AM - 11:00 AM",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.02,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // subtitle: Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Text(
                            //       "Web Development",
                            //       style: GoogleFonts.poppins(
                            //           fontWeight: FontWeight.w400,
                            //           fontSize: width * 0.03,
                            //           color: darkGrey),
                            //     ),
                            //     Row(
                            //       mainAxisAlignment: MainAxisAlignment.start,
                            //       children: [
                            //         Icon(
                            //           Icons.star,
                            //           color: Colors.amber,
                            //           size: width * 0.04,
                            //         ),
                            //         SizedBox(width: width * 0.01),
                            //         Icon(
                            //           Icons.star,
                            //           color: Colors.amber,
                            //           size: width * 0.04,
                            //         ),
                            //         SizedBox(width: width * 0.01),
                            //         Icon(
                            //           Icons.star,
                            //           color: Colors.amber,
                            //           size: width * 0.04,
                            //         ),
                            //         SizedBox(width: width * 0.01),
                            //         Icon(
                            //           Icons.star,
                            //           color: Colors.amber,
                            //           size: width * 0.04,
                            //         ),
                            //         SizedBox(width: width * 0.01),
                            //         Icon(
                            //           Icons.star_outline,
                            //           color: Colors.black,
                            //           size: width * 0.04,
                            //         )
                            //       ],
                            //     )
                            //   ],
                            // ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
