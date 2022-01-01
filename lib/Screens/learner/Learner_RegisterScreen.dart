import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:edutech/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerRegisterScreen extends StatelessWidget {
  const LearnerRegisterScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerRegister';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerRegisterScreen());
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: darkGrey,
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              height: height,
              width: width,
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: width * 0.06),
                  Container(
                    child: Image(
                      height: width * 0.3,
                      width: width * 0.3,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                  SizedBox(height: width * 0.02),
                  Text(
                    'CREATE YOUR ACCOUNT',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: width * 0.04,
                      color: orange,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          color: Colors.black,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                          ),
                          child: TextFormField(
                            style: GoogleFonts.openSans(
                                fontSize: width * 0.04, color: Colors.white),
                            decoration: InputDecoration(
                              fillColor: Colors.black,
                              filled: true,
                              contentPadding: EdgeInsets.zero,
                              prefixIcon: Container(
                                decoration:
                                    BoxDecoration(border: Border.all(width: 1)),
                                margin: EdgeInsets.only(right: width * 0.01),
                                width: width * 0.1,
                                child: Icon(
                                  CupertinoIcons.person_alt_circle,
                                  color: Colors.white,
                                ),
                              ),
                              hintText: 'Full Name',
                              hintStyle: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w300,
                                  fontSize: width * 0.04,
                                  color: Colors.white),

                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              // focusColor: purple,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: width * 0.02),
                        Card(
                          color: Colors.black,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                          ),
                          child: TextFormField(
                            style: GoogleFonts.openSans(
                                fontSize: width * 0.04, color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              prefixIcon: Container(
                                decoration:
                                    BoxDecoration(border: Border.all(width: 1)),
                                margin: EdgeInsets.only(right: width * 0.01),
                                width: width * 0.1,
                                child: Icon(
                                  Icons.mail,
                                  color: Colors.white,
                                ),
                              ),
                              hintText: 'Email',
                              hintStyle: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w300,
                                  fontSize: width * 0.04,
                                  color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: width * 0.02),
                        Card(
                          color: Colors.black,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            style: GoogleFonts.openSans(
                                fontSize: width * 0.04, color: Colors.white),
                            decoration: InputDecoration(
                              fillColor: Colors.black,
                              filled: true,
                              contentPadding: EdgeInsets.zero,
                              prefixIcon: Container(
                                decoration:
                                    BoxDecoration(border: Border.all(width: 1)),
                                margin: EdgeInsets.only(right: width * 0.01),
                                width: width * 0.1,
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                              ),
                              hintText: 'Password',
                              hintStyle: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w300,
                                  fontSize: width * 0.04,
                                  color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 0.5, color: Colors.black),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 0.5),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 0.5, color: Colors.black),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: width * 0.1),
                        Container(
                          height: width * 0.12,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.25),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                            ),
                            onPressed: () {
                              // Navigator.of(context)
                              //     .pushNamed(LearnerNavScreen.routeName);
                              Navigator.of(context)
                                  .pushNamed(RouteScreen.routeName);
                            },
                            child: Text(
                              'SIGN UP',
                              textAlign: TextAlign.end,
                              style: GoogleFonts.poppins(
                                fontSize: width * 0.04,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: width * 0.06),
                  Text(
                    'Or Sign In with',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: width * 0.035,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: width * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: width * 0.20,
                        width: width * 0.20,
                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: width * 0.2,
                            padding: EdgeInsets.all(width * 0.05),
                            child: SvgPicture.asset(
                              'assets/google.svg',
                              height: width * 0.15,
                              color: Colors.white,
                              width: width * 0.15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Container(
                        height: width * 0.20,
                        width: width * 0.20,
                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: width * 0.2,
                            padding: EdgeInsets.all(width * 0.05),
                            child: SvgPicture.asset(
                              'assets/facebook.svg',
                              // color: Color.fromRGBO(66, 103, 178, 1),
                              color: Colors.white,
                              height: width * 0.1,
                              width: width * 0.1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Container(
                        height: width * 0.20,
                        width: width * 0.20,
                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.all(width * 0.05),
                            child: SvgPicture.asset(
                              'assets/linkedin.svg',
                              // color: Color.fromRGBO(0, 126, 187, 1),
                              color: Colors.white,
                              height: width * 0.1,
                              width: width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: width * 0.02),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          LearnerLoginScreen.routeName, (route) => false);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: RichText(
                          text: TextSpan(
                              text: 'Already have account?',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: width * 0.035,
                                  color: orange),
                              children: [
                            TextSpan(
                              text: ' Sign In',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: width * 0.035,
                                  color: Colors.white),
                            ),
                          ])),
                    ),
                  ),
                  SizedBox(height: width * 0.06),
                ],
              ),
            ),
          ),
        ));
  }
}
