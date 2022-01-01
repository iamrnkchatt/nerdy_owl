import 'package:edutech/Screens/Widgets.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerHomeScreen extends StatelessWidget {
  const LearnerHomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerHome';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerHomeScreen());
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
              preferredSize: Size.fromHeight(height / 6.5),
              child: Container(
                // height: height * 12,
                padding: EdgeInsets.only(
                    left: width * 0.04,
                    right: width * 0.04,
                    bottom: width * 0.02),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.18),
                      child: Text(
                        'GROW YOUR OWN SKILL BY ONLINE LEARNING',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04,
                            color: Colors.white),
                      ),
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
                            decoration: BoxDecoration(
                                color: lightGrey, border: Border.all(width: 1)),
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
                  right: width * 0.04,
                  top: width * 0.02,
                  bottom: width * 0.02),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Catagory',
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
                  SizedBox(height: width * 0.02),
                  Row(children: [
                    CatagoryCard(width: width, text: 'Development'),
                    CatagoryCard(width: width, text: 'Business'),
                  ]),
                  SizedBox(height: width * 0.02),
                  Row(children: [
                    CatagoryCard(width: width, text: 'Lifestyle'),
                    CatagoryCard(width: width, text: 'Marketing'),
                  ]),
                  SizedBox(height: width * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Our Instructors',
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
                  SizedBox(height: width * 0.03),
                  Row(
                    children: [
                      _instructor(width),
                      _instructor(width),
                      _instructor(width),
                    ],
                  ),
                  SizedBox(height: width * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest Courses',
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
                  SizedBox(height: width * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CourseCard(width: width),
                      CourseCard(width: width),
                    ],
                  ),
                  SizedBox(height: width * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CourseCard(width: width),
                      CourseCard(width: width),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Expanded _instructor(double width) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white)),
            child: CircleAvatar(
              backgroundColor: lightGrey,
              backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_1280.jpg",
                // "assets/robert.jpg",
              ),
              radius: width * 0.10,
            ),
          ),
          Text(
            'Robert Jenson',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.035,
                color: Colors.white),
          ),
          Text(
            'Web Development',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: width * 0.025,
                color: Colors.white),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(width: width * 0.01),
              Icon(
                Icons.star_outline,
                color: Colors.white,
                size: width * 0.03,
              )
            ],
          )
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.of(context).pushNamed(LearnerCourseDetailScreen.routeName),
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
