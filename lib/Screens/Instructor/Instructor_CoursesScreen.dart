import 'package:edutech/Screens/Widgets.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorCoursesScreen extends StatelessWidget {
  const InstructorCoursesScreen({Key? key}) : super(key: key);
  static const String routeName = '/InstructorCourses';

  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorCoursesScreen());
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
                onTap: () {},
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
                      'CREATE/UPLOAD YOUR COURSE HERE',
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
                  right: width * 0.04,
                  top: width * 0.02,
                  bottom: width * 0.02),
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => InstructorCreateCourse())),
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
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              isAntiAlias: true,
                              image: AssetImage(
                                'assets/bg.jpeg',
                              ))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CREATE COURSE',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: width * 0.04,
                                color: Colors.white),
                          ),
                          Text(
                            'Create  Learning Experiences with the help of video lectures, quizzes ,exercises, etc',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: width * 0.025,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
