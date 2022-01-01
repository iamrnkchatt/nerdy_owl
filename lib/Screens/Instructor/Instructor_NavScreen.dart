import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edutech/Screens/Widgets.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorNavScreen extends StatefulWidget {
  const InstructorNavScreen({Key? key}) : super(key: key);
  static const String routeName = '/InstructorNav';

  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorNavScreen());
  }

  @override
  _InstructorNavScreenState createState() => _InstructorNavScreenState();
}

class _InstructorNavScreenState extends State<InstructorNavScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _page = 0;
  final screens = [
    const InstructorHomeScreen(),
    const InstructorCreateCourse(),
    const InstructorLectureListScreen(),
    const InstructorSettingsScreen(),
  ];
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: lightGrey,
      drawer: Drawer(
        backgroundColor: lightGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: width * 0.1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
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
              ],
            ),
            SizedBox(height: width * 0.04),
            Divider(
              thickness: 1,
              color: darkGrey,
            ),
            SizedBox(height: width * 0.04),
            Container(
              // padding: EdgeInsets.only(
              //   top: width * 0.04,
              // ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed("/LearnerProfile");
                },
                child: ListTile(
                  // minVerticalPadding: width * 0.03,
                  //tileColor: darkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: width * 0.06,
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
            ),
            Divider(
              thickness: 1,
              color: darkGrey,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed("/LearnerMyCourses");
                },
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Icon(
                    CupertinoIcons.book_solid,
                    color: Colors.white,
                    size: width * 0.06,
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
            ),
            Divider(
              thickness: 1,
              color: darkGrey,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context)
                  //     .pushNamed("/LearnerEnrolledLectureList");
                },
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Icon(
                    Icons.tv,
                    color: Colors.white,
                    size: width * 0.06,
                  ),
                  title: Text(
                    "My Lectures",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: darkGrey,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed("/LearnerLectureList");
                },
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Icon(
                    CupertinoIcons.tv_fill,
                    color: Colors.white,
                    size: width * 0.06,
                  ),
                  title: Text(
                    "Lectures",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: darkGrey,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context)
                  //     .pushNamed("/LearnerEnrolledLectureList");
                },
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Icon(
                    Icons.help,
                    color: Colors.white,
                    size: width * 0.06,
                  ),
                  title: Text(
                    "Help & Support",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: darkGrey,
            ),
            Container(
              // padding: EdgeInsets.only(
              //   top: width * 0.04,
              // ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "/Learnerlogin", (route) => false);
                },
                child: ListTile(
                  // minVerticalPadding: width * 0.03,
                  // tileColor: darkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: width * 0.06,
                  ),
                  title: Text(
                    "Logout",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        color: Colors.black,
        buttonBackgroundColor: orange,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
        index: 0,
        items: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: width * 0.06, color: Colors.white),
              Container(
                padding: EdgeInsets.all(width * 0.01),
                child: Text(
                  "Home",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: width * 0.025),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.book,
                size: width * 0.06,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.all(width * 0.01),
                child: Text(
                  "Courses",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: width * 0.025),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.tv_fill,
                size: width * 0.06,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.all(width * 0.01),
                child: Text(
                  "Lecture",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: width * 0.025),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.settings,
                size: width * 0.06,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.all(width * 0.01),
                child: Text(
                  "Settings",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: width * 0.025),
                ),
              ),
            ],
          ),
        ],
      ),
      // body: TabBarView(
      //   controller: _tabController,
      //   physics: NeverScrollableScrollPhysics(),
      //   children: [
      //     InstructorHomeScreen(),
      //     InstructorCreateCourse(),
      //     InstructorLectureListScreen(),
      //     InstructorSettingsScreen(),
      //   ],
      // ),
      // bottomNavigationBar: Container(
      //   height: width * 0.15,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      //     color: darkGrey,
      //   ),
      //   child: TabBar(
      //     indicatorSize: TabBarIndicatorSize.tab,
      //     labelColor: Colors.white,
      //     indicator: BoxDecoration(color: lightBrown),
      //     unselectedLabelColor: Colors.white,
      //     controller: _tabController,
      //     indicatorColor: lightBrown,
      //     tabs: [
      //       Tab(
      //         child: Container(
      //           child: Column(
      //             children: [
      //               Icon(
      //                 Icons.home,
      //                 size: width * 0.05,
      //               ),
      //               Text(
      //                 'Home',
      //                 style: GoogleFonts.poppins(),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Tab(
      //         child: Container(
      //           child: Column(
      //             children: [
      //               Icon(
      //                 CupertinoIcons.plus_circle,
      //                 size: width * 0.05,
      //               ),
      //               Text(
      //                 'Courses',
      //                 style: GoogleFonts.poppins(),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Tab(
      //         child: Container(
      //           child: Column(
      //             children: [
      //               Icon(
      //                 CupertinoIcons.tv_fill,
      //                 size: width * 0.05,
      //               ),
      //               Text(
      //                 'Lecture',
      //                 style: GoogleFonts.poppins(),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Tab(
      //         child: Container(
      //           child: Column(
      //             children: [
      //               Icon(
      //                 Icons.settings,
      //                 size: width * 0.05,
      //               ),
      //               Text(
      //                 'Settings',
      //                 style: GoogleFonts.poppins(),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
