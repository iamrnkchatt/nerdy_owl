import 'package:edutech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerVideoPreviewScreen extends StatefulWidget {
  const LearnerVideoPreviewScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerVideoPreview';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerVideoPreviewScreen());
  }

  @override
  _LearnerVideoPreviewScreenState createState() =>
      _LearnerVideoPreviewScreenState();
}

class _LearnerVideoPreviewScreenState extends State<LearnerVideoPreviewScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: lightGrey,
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: lightGrey,
      //   // iconTheme: IconThemeData.(),
      //   title: Text(
      //     "Course Structure",
      //     style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                color: Colors.black,
                height: width * 0.5,
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: width * 0.1,
                )),
            Container(
              padding: EdgeInsets.all(width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Advance UI/UX Courses',
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04,
                        color: Colors.white),
                  ),
                  SizedBox(height: width * 0.02),
                  Text(
                    'Web Development',
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.025,
                        color: Colors.white),
                  ),
                  SizedBox(height: width * 0.04),
                  Divider(
                    color: Colors.white,
                  ),
                  SizedBox(height: width * 0.04),
                  _modules(width),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _modules(double width) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Text(
              'Section 1 - ',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: width * 0.035,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Introduction',
              style: GoogleFonts.poppins(
                  color: orange,
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: width * 0.04),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: width * 0.02),
          color: darkGrey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lecture 1',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.white,
                    size: width * 0.08,
                  )
                ],
              ),
              SizedBox(height: width * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lecture 2',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.white,
                    size: width * 0.08,
                  )
                ],
              ),
              SizedBox(height: width * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lecture 3',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.white,
                    size: width * 0.08,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: width * 0.04),
        Row(
          children: [
            Text(
              'Section 2 - ',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: width * 0.035,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Setup',
              style: GoogleFonts.poppins(
                  color: orange,
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: width * 0.04),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: width * 0.02),
          color: darkGrey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lecture 4',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.white,
                    size: width * 0.08,
                  )
                ],
              ),
              SizedBox(height: width * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lecture 5',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.white,
                    size: width * 0.08,
                  )
                ],
              ),
              SizedBox(height: width * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lecture 6',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.white,
                    size: width * 0.08,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: width * 0.04),
        Row(
          children: [
            Text(
              'Section 3 - ',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: width * 0.035,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Conclusion',
              style: GoogleFonts.poppins(
                  color: orange,
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: width * 0.04),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: width * 0.02),
          color: darkGrey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lecture 7',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.white,
                    size: width * 0.08,
                  )
                ],
              ),
              SizedBox(height: width * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lecture 8',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: orange,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.white,
                    size: width * 0.08,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
