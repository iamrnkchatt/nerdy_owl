import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class LearnerEnrolledLectureListScreen extends StatelessWidget {
  const LearnerEnrolledLectureListScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerEnrolledLectureList';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => LearnerEnrolledLectureListScreen());
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text(
          "My Lectures",
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
                          leading: Container(
                            height: width * 0.12,
                            width: width * 0.12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_1280.jpg"),
                              // radius: width * 0.10,
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Robert Jenson",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: width * 0.02,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Enrolled",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: width * 0.02,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
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
                                        color: darkGrey.withOpacity(0.50)),
                                  ),
                                  SizedBox(width: width * 0.1),
                                  Text(
                                    "10:00 AM - 11:00 AM",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: width * 0.02,
                                        color: darkGrey.withOpacity(0.50)),
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
    );
  }
}
