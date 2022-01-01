import 'package:edutech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorProfileScreen extends StatelessWidget {
  const InstructorProfileScreen({Key? key}) : super(key: key);
  static const String routeName = '/InstructorProfile';

  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorProfileScreen());
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
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/InstructorEditProfile');
                },
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.03),
                  child: Icon(Icons.edit, size: width * 0.06),
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
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: "Yash Patel",
                        readOnly: true,
                        enabled: true,

                        style: GoogleFonts.poppins(
                            textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold)),
                        decoration: InputDecoration(
                          fillColor: darkGrey,
                          filled: true,
                          labelStyle: GoogleFonts.openSans(color: Colors.white),
                          labelText: 'Email',
                        ),
                        // validator: (value) => value!.contains('@')
                        //     ? 'Please Enter a Valid Email'
                        //     : null,
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        initialValue: "9876543210",
                        readOnly: true,
                        enabled: true,
                        style: GoogleFonts.poppins(
                            textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold)),
                        decoration: InputDecoration(
                          fillColor: darkGrey,
                          filled: true,
                          labelStyle: GoogleFonts.openSans(color: Colors.white),
                          labelText: 'Phone Number',
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        initialValue: "yash@gmail.com",
                        readOnly: true,
                        enabled: true,
                        style: GoogleFonts.poppins(
                            textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold)),
                        decoration: InputDecoration(
                          fillColor: darkGrey,
                          filled: true,
                          labelStyle: GoogleFonts.openSans(color: Colors.white),
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        initialValue: "10/12/2000",
                        readOnly: true,
                        enabled: true,
                        style: GoogleFonts.poppins(
                            textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold)),
                        decoration: InputDecoration(
                          fillColor: darkGrey,
                          filled: true,
                          labelStyle: GoogleFonts.openSans(color: Colors.white),
                          labelText: 'Date of Birth',
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        initialValue: "Male",
                        readOnly: true,
                        enabled: true,
                        style: GoogleFonts.poppins(
                            textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold)),
                        decoration: InputDecoration(
                          fillColor: darkGrey,
                          filled: true,
                          labelStyle: GoogleFonts.openSans(color: Colors.white),
                          labelText: 'Gender',
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        initialValue: "India",
                        readOnly: true,
                        enabled: true,
                        style: GoogleFonts.poppins(
                            textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold)),
                        decoration: InputDecoration(
                          fillColor: darkGrey,
                          filled: true,
                          labelStyle: GoogleFonts.openSans(color: Colors.white),
                          labelText: 'Country',
                        ),
                      ),
                    ],
                  ),
                )),
          )),
    );
  }
}
