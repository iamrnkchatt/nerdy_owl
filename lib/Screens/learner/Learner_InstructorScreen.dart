import 'package:edutech/Screens/Widgets.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerInstructorScreen extends StatelessWidget {
  const LearnerInstructorScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerInstructor';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerInstructorScreen());
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
                      'FIND YOUR INSTRUCTOR HERE',
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
                        EdgeInsets.only(top: width * 0.05, right: width * 0.04),
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: width * 0.04);
                      },
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: width * 0.2,
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed("/LearnerInstructorDetail");
                            },
                            horizontalTitleGap: 0.0,
                            minVerticalPadding: width * 0.03,
                            tileColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white)),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_1280.jpg"),
                                radius: width * 0.10,
                              ),
                            ),
                            title: Text(
                              "Robert Jenson",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * 0.04,
                                  color: orange),
                            ),
                            trailing: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: width * 0.008),
                                Text(
                                  "Web Development",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.03,
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
                            ),
                          ),
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
