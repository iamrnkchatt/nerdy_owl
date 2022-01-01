import 'package:edutech/Screens/Widgets.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerLecturesListScreen extends StatelessWidget {
  const LearnerLecturesListScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerLectureList';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerLecturesListScreen());
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
          title: Text(
            "Lectures",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.04,
                color: Colors.white),
          ),
          elevation: 0.0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(height / 10),
            child: Container(
              // height: height * 12,
              padding: EdgeInsets.only(
                  left: width * 0.04,
                  right: width * 0.04,
                  bottom: width * 0.02),
              child: Card(
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
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20)),
                    ),
                    // focusColor: purple,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGrey, width: 1),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: lightGrey),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20)),
                    ),
                  ),
                ),
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
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          print("Printed");
                          AlertDialog(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            title: Text(
                              "Are you sure you want to enroll?",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * 0.02,
                                  color: Colors.white),
                            ),
                            actions: [
                              Container(
                                height: width * 0.06,
                                width: width * 0.2,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Yes',
                                    style: GoogleFonts.poppins(
                                      fontSize: width * 0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: width * 0.06,
                                width: width * 0.2,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'No',
                                    style: GoogleFonts.poppins(
                                      fontSize: width * 0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
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
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
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
                                Text(
                                  "Introduction to Java",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: width * 0.04,
                                      color: orange),
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
