import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:edutech/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnerForgotPasswordScreen extends StatelessWidget {
  const LearnerForgotPasswordScreen({Key? key}) : super(key: key);
  static const String routeName = '/LearnerForgotPassword';

  static Route route() {
    return MaterialPageRoute(builder: (_) => LearnerForgotPasswordScreen());
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: width * 0.2),
                  Container(
                    child: Image(
                      height: width * 0.35,
                      width: width * 0.35,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                  SizedBox(height: width * 0.05),
                  Text(
                    'Forget Password',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: width * 0.05,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: width * 0.05),
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
                        SizedBox(height: width * 0.1),
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
                              'SUBMIT',
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
                ],
              ),
            ),
          ),
        ));
  }
}
