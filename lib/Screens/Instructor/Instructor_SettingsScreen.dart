import 'package:edutech/Screens/Widgets.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorSettingsScreen extends StatelessWidget {
  const InstructorSettingsScreen({Key? key}) : super(key: key);
  static const String routeName = '/InstructorSettings';

  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorSettingsScreen());
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
              preferredSize: Size.fromHeight(height / 6),
              child: Container(
                // height: height * 12,
                padding: EdgeInsets.only(
                    left: width * 0.04,
                    right: width * 0.04,
                    bottom: width * 0.02),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/yash.jpeg',
                        ),
                        radius: width * 0.10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Yash Patel',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.05,
                                color: orange),
                          ),
                          Text(
                            'Instructor',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: width * 0.035,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    )
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
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: width * 0.04,
                    ),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).pushNamed("/InstructorProfile");
                      },
                      minVerticalPadding: width * 0.03,
                      tileColor: darkGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: width * 0.08,
                      ),
                      title: Text(
                        "My Profile",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: width * 0.04,
                    ),
                    child: ListTile(
                      onTap: () {
                        //Navigator.of(context).pushNamed("/LearnerMyCourses");
                      },
                      minVerticalPadding: width * 0.03,
                      tileColor: darkGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      leading: Icon(
                        CupertinoIcons.book_fill,
                        color: Colors.white,
                        size: width * 0.08,
                      ),
                      title: Text(
                        "My Courses",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  OptionList(
                    onTap: () {},
                    width: width,
                    text: "Help & Support",
                    leading: Icon(
                      Icons.help,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  ),
                  OptionList(
                    onTap: () {},
                    width: width,
                    text: "Logout",
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
