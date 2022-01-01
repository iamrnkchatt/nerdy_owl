import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:edutech/Screens/image_helper.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';

class InstructorCreateCourseModule1 extends StatefulWidget {
  const InstructorCreateCourseModule1({Key? key}) : super(key: key);
  static const String routeName = '/InstructorCreateCourseModule1';
  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorCreateCourseModule1());
  }

  @override
  State<InstructorCreateCourseModule1> createState() =>
      _InstructorCreateCourseModule1State();
}

class _InstructorCreateCourseModule1State
    extends State<InstructorCreateCourseModule1> {
  File? selectedFile1;
  void _selectImageFromGallery1(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile1 = pickedFile;
      });
    } else {}
  }

  File? selectedFile2;
  void _selectImageFromGallery2(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile2 = pickedFile;
      });
    } else {}
  }

  File? selectedFile3;
  void _selectImageFromGallery3(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile3 = pickedFile;
      });
    } else {}
  }

  // void _selectImageFromCamera(BuildContext context) async {
  //   final pickedFile = await ImageHelper.pickImageFromCamera(
  //       context: context,
  //       cropStyle: CropStyle.rectangle,
  //       title: 'Product Image');
  //   if (pickedFile != null) {
  //     setState(() {
  //       selectedFile = pickedFile;
  //     });
  //   } else {}
  // }

  // void _showPicker(context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return SafeArea(
  //           child: Container(
  //             child: new Wrap(
  //               children: <Widget>[
  //                 new ListTile(
  //                     leading: new Icon(Icons.photo_library),
  //                     title: new Text('Photo Library'),
  //                     onTap: () {
  //                       _selectImageFromGallery(context);
  //                       Navigator.of(context).pop();
  //                     }),
  //                 new ListTile(
  //                   leading: new Icon(Icons.photo_camera),
  //                   title: new Text('Camera'),
  //                   onTap: () {
  //                     _selectImageFromCamera(context);
  //                     Navigator.of(context).pop();
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }

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
            "CREATE COURSE",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
          ),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: width * 0.04),
                  Container(
                    alignment: Alignment.center,
                    width: width,
                    height: width * 0.12,
                    decoration: BoxDecoration(
                        color: darkGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Module 1 (Introduction)",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.045),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Card(
                    margin: EdgeInsets.zero,
                    child: TextFormField(
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        label: Text('Module Title'),

                        labelStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w300,
                            fontSize: width * 0.04,
                            color: Colors.white),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                        // focusColor: purple,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightGrey, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Card(
                    margin: EdgeInsets.zero,
                    // elevation: 4,
                    // shadowColor: lightBlue,
                    // shape: OutlineInputBorder(
                    //   borderRadius:
                    //       BorderRadius.only(bottomRight: Radius.circular(20)),
                    // ),
                    child: TextFormField(
                      maxLines: 2,
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        label: Text('Module Description'),

                        labelStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w300,
                            fontSize: width * 0.04,
                            color: Colors.white),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                        // focusColor: purple,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightGrey, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  selectUploadType(height, width),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Create Lecture 1",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.04),
                  _uploadValue == "Video File"
                      ? selectedFile1 != null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Container(
                                // padding: EdgeInsets.only(
                                //     top: height * 0.06, bottom: height * 0.06),
                                child: Center(
                                    child: Text(
                                  "Uploaded!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.06),
                                )),
                              ),
                            )
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20.0),
                              color: Colors.grey,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.06, bottom: height * 0.06),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectImageFromGallery1(context);
                                  },
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Stack(
                                          children: [
                                            Icon(
                                              Icons.upload_file,
                                              size: width * 0.15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Scan | Capture | Upload",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.017,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : _uploadValue == "Url"
                          ? Card(
                              margin: EdgeInsets.zero,
                              child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: darkGrey,
                                  filled: true,

                                  label: Text('Video Url'),

                                  labelStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.04,
                                      color: Colors.white),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                  // focusColor: purple,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightGrey, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(width: width * 0.001),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Create Lecture 2",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.04),
                  _uploadValue == "Video File"
                      ? selectedFile2 != null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Container(
                                // padding: EdgeInsets.only(
                                //     top: height * 0.06, bottom: height * 0.06),
                                child: Center(
                                    child: Text(
                                  "Uploaded!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.06),
                                )),
                              ),
                            )
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20.0),
                              color: Colors.grey,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.06, bottom: height * 0.06),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectImageFromGallery2(context);
                                  },
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Stack(
                                          children: [
                                            Icon(
                                              Icons.upload_file,
                                              size: width * 0.15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Scan | Capture | Upload",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.017,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : _uploadValue == "Url"
                          ? Card(
                              margin: EdgeInsets.zero,
                              child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: darkGrey,
                                  filled: true,

                                  label: Text('Video Url'),

                                  labelStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.04,
                                      color: Colors.white),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                  // focusColor: purple,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightGrey, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(width: width * 0.001),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Create Lecture 3",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.04),
                  _uploadValue == "Video File"
                      ? selectedFile3 != null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Container(
                                // padding: EdgeInsets.only(
                                //     top: height * 0.06, bottom: height * 0.06),
                                child: Center(
                                    child: Text(
                                  "Uploaded!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.06),
                                )),
                              ),
                            )
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20.0),
                              color: Colors.grey,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.06, bottom: height * 0.06),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectImageFromGallery3(context);
                                  },
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Stack(
                                          children: [
                                            Icon(
                                              Icons.upload_file,
                                              size: width * 0.15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Scan | Capture | Upload",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.017,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : _uploadValue == "Url"
                          ? Card(
                              margin: EdgeInsets.zero,
                              child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: darkGrey,
                                  filled: true,

                                  label: Text('Video Url'),

                                  labelStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.04,
                                      color: Colors.white),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                  // focusColor: purple,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightGrey, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(width: width * 0.001),
                  SizedBox(height: width * 0.1),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.2),
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
                        shadowColor: MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(20),
                        backgroundColor: MaterialStateProperty.all(lightGrey),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                InstructorCreateCourseModule2()));
                      },
                      child: Text(
                        'NEXT',
                        style: GoogleFonts.poppins(
                          fontSize: width * 0.04,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.1),
                ],
              ),
            ),
          ),
        ));
  }

  var _uploadValue;
  List<String> _uploadtype = <String>[
    'Video File',
    'Url',
    'Live Class',
  ];

  Widget selectUploadType(height, width) {
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
                items: _uploadtype
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
                    _uploadValue = selectedtype;
                  });
                },
                value: _uploadValue,
                hint: Text(
                  "Upload Type",
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.035,
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

class InstructorCreateCourseModule2 extends StatefulWidget {
  const InstructorCreateCourseModule2({Key? key}) : super(key: key);
  static const String routeName = '/InstructorCreateCourseModule2';
  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorCreateCourseModule2());
  }

  @override
  State<InstructorCreateCourseModule2> createState() =>
      _InstructorCreateCourseModule2State();
}

class _InstructorCreateCourseModule2State
    extends State<InstructorCreateCourseModule2> {
  File? selectedFile1;
  void _selectImageFromGallery1(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile1 = pickedFile;
      });
    } else {}
  }

  File? selectedFile2;
  void _selectImageFromGallery2(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile2 = pickedFile;
      });
    } else {}
  }

  File? selectedFile3;
  void _selectImageFromGallery3(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile3 = pickedFile;
      });
    } else {}
  }

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
            "CREATE COURSE",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
          ),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: width * 0.04),
                  Container(
                    alignment: Alignment.center,
                    width: width,
                    height: width * 0.12,
                    decoration: BoxDecoration(
                        color: darkGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Module 2(Core)",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.045),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Card(
                    margin: EdgeInsets.zero,
                    // elevation: 4,
                    // shadowColor: lightBlue,
                    // shape: OutlineInputBorder(
                    //   borderRadius:
                    //       BorderRadius.only(bottomRight: Radius.circular(20)),
                    // ),
                    child: TextFormField(
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        label: Text('Module Title'),

                        labelStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w300,
                            fontSize: width * 0.04,
                            color: Colors.white),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                        // focusColor: purple,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightGrey, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Card(
                    margin: EdgeInsets.zero,
                    // elevation: 4,
                    // shadowColor: lightBlue,
                    // shape: OutlineInputBorder(
                    //   borderRadius:
                    //       BorderRadius.only(bottomRight: Radius.circular(20)),
                    // ),
                    child: TextFormField(
                      maxLines: 2,
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        label: Text('Module Description'),

                        labelStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w300,
                            fontSize: width * 0.04,
                            color: Colors.white),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                        // focusColor: purple,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightGrey, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  selectUploadType(height, width),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Create Lecture 1",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.04),
                  _uploadValue == "Video File"
                      ? selectedFile1 != null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Container(
                                // padding: EdgeInsets.only(
                                //     top: height * 0.06, bottom: height * 0.06),
                                child: Center(
                                    child: Text(
                                  "Uploaded!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.06),
                                )),
                              ),
                            )
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20.0),
                              color: Colors.grey,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.06, bottom: height * 0.06),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectImageFromGallery1(context);
                                  },
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Stack(
                                          children: [
                                            Icon(
                                              Icons.upload_file,
                                              size: width * 0.15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Scan | Capture | Upload",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.017,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : _uploadValue == "Url"
                          ? Card(
                              margin: EdgeInsets.zero,
                              child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: darkGrey,
                                  filled: true,

                                  label: Text('Video Url'),

                                  labelStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.04,
                                      color: Colors.white),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                  // focusColor: purple,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightGrey, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(width: width * 0.001),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Create Lecture 2",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.04),
                  _uploadValue == "Video File"
                      ? selectedFile2 != null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Container(
                                // padding: EdgeInsets.only(
                                //     top: height * 0.06, bottom: height * 0.06),
                                child: Center(
                                    child: Text(
                                  "Uploaded!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.06),
                                )),
                              ),
                            )
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20.0),
                              color: Colors.grey,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.06, bottom: height * 0.06),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectImageFromGallery2(context);
                                  },
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Stack(
                                          children: [
                                            Icon(
                                              Icons.upload_file,
                                              size: width * 0.15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Scan | Capture | Upload",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.017,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : _uploadValue == "Url"
                          ? Card(
                              margin: EdgeInsets.zero,
                              child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: darkGrey,
                                  filled: true,

                                  label: Text('Video Url'),

                                  labelStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.04,
                                      color: Colors.white),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                  // focusColor: purple,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightGrey, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(width: width * 0.001),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Create Lecture 3",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.04),
                  _uploadValue == "Video File"
                      ? selectedFile3 != null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Container(
                                // padding: EdgeInsets.only(
                                //     top: height * 0.06, bottom: height * 0.06),
                                child: Center(
                                    child: Text(
                                  "Uploaded!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.06),
                                )),
                              ),
                            )
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20.0),
                              color: Colors.grey,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.06, bottom: height * 0.06),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectImageFromGallery3(context);
                                  },
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Stack(
                                          children: [
                                            Icon(
                                              Icons.upload_file,
                                              size: width * 0.15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Scan | Capture | Upload",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.017,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : _uploadValue == "Url"
                          ? Card(
                              margin: EdgeInsets.zero,
                              child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: darkGrey,
                                  filled: true,

                                  label: Text('Video Url'),

                                  labelStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.04,
                                      color: Colors.white),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                  // focusColor: purple,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightGrey, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(width: width * 0.001),
                  SizedBox(height: width * 0.1),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.2),
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
                        shadowColor: MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(20),
                        backgroundColor: MaterialStateProperty.all(lightGrey),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                InstructorCreateCourseModule3()));
                      },
                      child: Text(
                        'NEXT',
                        style: GoogleFonts.poppins(
                          fontSize: width * 0.04,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.1),
                ],
              ),
            ),
          ),
        ));
  }

  var _uploadValue;
  List<String> _uploadtype = <String>[
    'Video File',
    'Url',
    'Live Class',
  ];

  Widget selectUploadType(height, width) {
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
                items: _uploadtype
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
                    _uploadValue = selectedtype;
                  });
                },
                value: _uploadValue,
                hint: Text(
                  "Upload Type",
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.035,
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

class InstructorCreateCourseModule3 extends StatefulWidget {
  const InstructorCreateCourseModule3({Key? key}) : super(key: key);
  static const String routeName = '/InstructorCreateCourseModule3';
  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorCreateCourseModule3());
  }

  @override
  State<InstructorCreateCourseModule3> createState() =>
      _InstructorCreateCourseModule3State();
}

class _InstructorCreateCourseModule3State
    extends State<InstructorCreateCourseModule3> {
  File? selectedFile1;
  void _selectImageFromGallery1(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile1 = pickedFile;
      });
    } else {}
  }

  File? selectedFile2;
  void _selectImageFromGallery2(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile2 = pickedFile;
      });
    } else {}
  }

  File? selectedFile3;
  void _selectImageFromGallery3(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile3 = pickedFile;
      });
    } else {}
  }

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
            "CREATE COURSE",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
          ),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: width * 0.04),
                  Container(
                    alignment: Alignment.center,
                    width: width,
                    height: width * 0.12,
                    decoration: BoxDecoration(
                        color: darkGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Module 3(Conclusion)",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.045),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Card(
                    margin: EdgeInsets.zero,
                    // elevation: 4,
                    // shadowColor: lightBlue,
                    // shape: OutlineInputBorder(
                    //   borderRadius:
                    //       BorderRadius.only(bottomRight: Radius.circular(20)),
                    // ),
                    child: TextFormField(
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        label: Text('Module Title'),

                        labelStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w300,
                            fontSize: width * 0.04,
                            color: Colors.white),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                        // focusColor: purple,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightGrey, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Card(
                    margin: EdgeInsets.zero,
                    // elevation: 4,
                    // shadowColor: lightBlue,
                    // shape: OutlineInputBorder(
                    //   borderRadius:
                    //       BorderRadius.only(bottomRight: Radius.circular(20)),
                    // ),
                    child: TextFormField(
                      maxLines: 2,
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        label: Text('Module Description'),

                        labelStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w300,
                            fontSize: width * 0.04,
                            color: Colors.white),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                        // focusColor: purple,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightGrey, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: lightGrey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  SizedBox(height: width * 0.04),
                  selectUploadType(height, width),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Create Lecture 1",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.04),
                  _uploadValue == "Video File"
                      ? selectedFile1 != null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Container(
                                // padding: EdgeInsets.only(
                                //     top: height * 0.06, bottom: height * 0.06),
                                child: Center(
                                    child: Text(
                                  "Uploaded!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.06),
                                )),
                              ),
                            )
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20.0),
                              color: Colors.grey,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.06, bottom: height * 0.06),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectImageFromGallery1(context);
                                  },
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Stack(
                                          children: [
                                            Icon(
                                              Icons.upload_file,
                                              size: width * 0.15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Scan | Capture | Upload",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.017,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : _uploadValue == "Url"
                          ? Card(
                              margin: EdgeInsets.zero,
                              child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: darkGrey,
                                  filled: true,

                                  label: Text('Video Url'),

                                  labelStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.04,
                                      color: Colors.white),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                  // focusColor: purple,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightGrey, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(width: width * 0.001),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Create Lecture 2",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.04),
                  _uploadValue == "Video File"
                      ? selectedFile2 != null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Container(
                                // padding: EdgeInsets.only(
                                //     top: height * 0.06, bottom: height * 0.06),
                                child: Center(
                                    child: Text(
                                  "Uploaded!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.06),
                                )),
                              ),
                            )
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20.0),
                              color: Colors.grey,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.06, bottom: height * 0.06),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectImageFromGallery2(context);
                                  },
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Stack(
                                          children: [
                                            Icon(
                                              Icons.upload_file,
                                              size: width * 0.15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Scan | Capture | Upload",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.017,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : _uploadValue == "Url"
                          ? Card(
                              margin: EdgeInsets.zero,
                              child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: darkGrey,
                                  filled: true,

                                  label: Text('Video Url'),

                                  labelStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.04,
                                      color: Colors.white),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                  // focusColor: purple,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightGrey, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(width: width * 0.001),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Create Lecture 3",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.04),
                  _uploadValue == "Video File"
                      ? selectedFile3 != null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Container(
                                // padding: EdgeInsets.only(
                                //     top: height * 0.06, bottom: height * 0.06),
                                child: Center(
                                    child: Text(
                                  "Uploaded!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.06),
                                )),
                              ),
                            )
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20.0),
                              color: Colors.grey,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.06, bottom: height * 0.06),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectImageFromGallery3(context);
                                  },
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Stack(
                                          children: [
                                            Icon(
                                              Icons.upload_file,
                                              size: width * 0.15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Scan | Capture | Upload",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.017,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : _uploadValue == "Url"
                          ? Card(
                              margin: EdgeInsets.zero,
                              child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: darkGrey,
                                  filled: true,

                                  label: Text('Video Url'),

                                  labelStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.04,
                                      color: Colors.white),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                  // focusColor: purple,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightGrey, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: lightGrey),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(width: width * 0.001),
                  SizedBox(height: width * 0.1),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.2),
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
                        shadowColor: MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(20),
                        backgroundColor: MaterialStateProperty.all(lightGrey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => InstructorNavScreen()),
                            (route) => false);
                      },
                      child: Text(
                        'UPLOAD',
                        style: GoogleFonts.poppins(
                          fontSize: width * 0.04,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.1),
                ],
              ),
            ),
          ),
        ));
  }

  var _uploadValue;
  List<String> _uploadtype = <String>[
    'Video File',
    'Url',
    'Live Class',
  ];

  Widget selectUploadType(height, width) {
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
                items: _uploadtype
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
                    _uploadValue = selectedtype;
                  });
                },
                value: _uploadValue,
                hint: Text(
                  "Upload Type",
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.035,
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
