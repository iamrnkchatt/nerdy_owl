import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:edutech/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerLoginScreen extends StatelessWidget {
  const LearnerLoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/Learnerlogin';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerLoginScreen());
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
                      height: width * 0.35,
                      width: width * 0.35,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                  SizedBox(height: width * 0.02),
                  Text(
                    'LOGIN TO YOUR ACCOUNT',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: width * 0.05,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: width * 0.06),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          color: Colors.black,
                          // elevation: 4,
                          // shadowColor: lightBlue,
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
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    color: Colors.black),
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
                                    BorderSide(width: 1, color: lightBlue),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              // focusColor: purple,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: lightBlue, width: 1),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: lightBlue),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: width * 0.03),
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
                                    BorderSide(width: 0.5, color: lightBlue),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: lightBlue, width: 0.5),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 0.5, color: lightBlue),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: width * 0.02),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed("/LearnerForgotPassword");
                          },
                          child: Text(
                            'Forget Password?',
                            textAlign: TextAlign.end,
                            style: GoogleFonts.openSans(
                              fontSize: width * 0.04,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: width * 0.06),
                        Container(
                          height: width * 0.12,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.22),
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
                              'SIGN IN',
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
                  SizedBox(height: width * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: width * 0.22,
                        width: width * 0.22,
                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: width * 0.2,
                            padding: EdgeInsets.all(width * 0.05),
                            child: SvgPicture.asset(
                              'assets/google.svg',
                              color: Colors.white,
                              height: width * 0.15,
                              width: width * 0.15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Container(
                        height: width * 0.22,
                        width: width * 0.22,
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
                              height: width * 0.1,
                              width: width * 0.1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Container(
                        height: width * 0.22,
                        width: width * 0.22,
                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.all(width * 0.05),
                            child: SvgPicture.asset(
                              'assets/linkedin.svg',
                              // color: Color.fromRGBO(0, 126, 187, 1),
                              height: width * 0.1,
                              width: width * 0.1,
                              color: Colors.white,
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
                          LearnerRegisterScreen.routeName, (route) => false);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: RichText(
                          text: TextSpan(
                              text: 'Don\'t have an account?',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: width * 0.035,
                                  color: orange),
                              children: [
                            TextSpan(
                              text: ' Sign Up',
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
