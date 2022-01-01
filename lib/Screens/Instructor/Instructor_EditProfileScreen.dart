import 'package:edutech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorEditProfileScreen extends StatefulWidget {
  const InstructorEditProfileScreen({Key? key}) : super(key: key);
  static const String routeName = '/InstructorEditProfile';

  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorEditProfileScreen());
  }

  @override
  _InstructorEditProfileScreenState createState() =>
      _InstructorEditProfileScreenState();
}

class _InstructorEditProfileScreenState
    extends State<InstructorEditProfileScreen> {
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var selectedDate;
  var selectedMonth;
  var selectedYear;
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime(1980),
            firstDate: DateTime(1960),
            lastDate: DateTime(2030))
        .then((dt) {
      setState(() {
        selectedDate = dt!.day;
        selectedMonth = dt.month;
        selectedYear = dt.year;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          //resizeToAvoidBottomInset: false,
          backgroundColor: lightGrey,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0.0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(height / 6),
              child: Container(
                // height: height * 12,
                padding: EdgeInsets.only(
                    left: width * 0.04,
                    right: width * 0.04,
                    bottom: width * 0.04),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/yash.jpeg',
                        ),
                        radius: width * 0.10,
                      ),
                      Positioned(
                        right: width * 0.001,
                        bottom: width * 0.001,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            CupertinoIcons.camera_circle_fill,
                            size: width * 0.062,
                            color: orange,
                          ),
                        ),
                      )
                    ],
                  ),
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
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: "Yash Patel",

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
                          labelText: 'Name',
                        ),
                        // validator: (value) => value!.contains('@')
                        //     ? 'Please Enter a Valid Email'
                        //     : null,
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        initialValue: "9876543210",
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
                      InkWell(
                        child: ListTile(
                          tileColor: darkGrey,
                          shape: UnderlineInputBorder(),
                          leading: Text(
                            "Date Of Birth",
                            style: GoogleFonts.openSans(
                              textStyle: GoogleFonts.openSans(
                                  fontSize: width * 0.04,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          trailing: SizedBox(
                              height: height * 0.08,
                              width: width * 0.5,
                              child: InkWell(
                                onTap: _showDatePicker,
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    height: height * 0.08,
                                    width: width * 0.5,
                                    child: Text(
                                        selectedDate != null
                                            ? '${selectedDate.toString()}/${selectedMonth.toString()}/${selectedYear.toString()}'
                                            : 'Select Date',
                                        style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.04,
                                            color: Colors.white),
                                        textDirection: TextDirection.rtl)),
                              )),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      selectGenderType(height, width),
                      SizedBox(height: height * 0.01),
                      selectCountryType(height, width),
                      SizedBox(height: height * 0.05),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 10,
                                offset: Offset.fromDirection(1, 8),
                                spreadRadius: 0.4)
                          ],
                        ),
                        height: width * 0.1,
                        width: width * 0.4,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shadowColor:
                                MaterialStateProperty.all(Colors.black),
                            elevation: MaterialStateProperty.all(20),
                            backgroundColor:
                                MaterialStateProperty.all(lightGrey),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'SAVE',
                            style: GoogleFonts.poppins(
                              fontSize: width * 0.04,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                    ],
                  ),
                )),
          )),
    );
  }

  var _genderValue;
  List<String> _gendertype = <String>[
    'Male',
    'Female',
    'Others',
  ];
  var _countryValue;
  List<String> _countryName = <String>[
    'India',
    'Bangladesh',
    'Austrilia',
    "Germany"
  ];
  Widget selectGenderType(height, width) {
    return Container(
      // margin: EdgeInsets.fromLTRB(width * 0.06, 0.0, width * 0.06, 0.0),
      decoration: BoxDecoration(
        color: darkGrey,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.fromLTRB(
          width * 0.025, height * 0.005, width * 0.017, height * 0.005),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                dropdownColor: lightGrey,
                items: _gendertype
                    .map((value) => DropdownMenuItem(
                          child: Text(
                            value,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          value: value,
                        ))
                    .toList(),
                onChanged: (selectedtype) {
                  setState(() {
                    _genderValue = selectedtype;
                  });
                },
                value: _genderValue,
                hint: Text(
                  "Gender",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.025,
                  ),
                ),
                elevation: 0,
                isExpanded: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget selectCountryType(height, width) {
    return Container(
      // margin: EdgeInsets.fromLTRB(width * 0.06, 0.0, width * 0.06, 0.0),
      decoration: BoxDecoration(
        color: darkGrey,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.fromLTRB(
          width * 0.025, height * 0.005, width * 0.017, height * 0.005),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                dropdownColor: lightGrey,
                items: _countryName
                    .map((value) => DropdownMenuItem(
                          child: Text(
                            value,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          value: value,
                        ))
                    .toList(),
                onChanged: (selectedtype) {
                  setState(() {
                    _countryValue = selectedtype;
                  });
                },
                value: _countryValue,
                hint: Text(
                  "Country",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.025,
                  ),
                ),
                elevation: 0,
                isExpanded: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
