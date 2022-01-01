import 'package:edutech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerModuleListScreen extends StatefulWidget {
  const LearnerModuleListScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerModuleList';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerModuleListScreen());
  }

  @override
  _LearnerModuleListScreenState createState() =>
      _LearnerModuleListScreenState();
}

class _LearnerModuleListScreenState extends State<LearnerModuleListScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: lightGrey,
        // iconTheme: IconThemeData.(),
        title: Text(
          "Course Structure",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
              Text(
                'Modules',
                //textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.06,
                    color: Colors.white),
              ),
              SizedBox(height: width * 0.04),
              _modules(width),
            ],
          ),
        ),
      ),
    );
  }

  Container _modules(double width) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Introduction',
          style: GoogleFonts.poppins(
              color: orange,
              fontSize: width * 0.04,
              fontWeight: FontWeight.w700),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: width * 0.04),
        Text(
          'Setup',
          style: GoogleFonts.poppins(
              color: orange,
              fontSize: width * 0.04,
              fontWeight: FontWeight.w700),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: width * 0.04),
        Text(
          'Conclusion',
          style: GoogleFonts.poppins(
              color: orange,
              fontSize: width * 0.04,
              fontWeight: FontWeight.w700),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/LearnerVideoPreview");
                    },
                    child: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
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
