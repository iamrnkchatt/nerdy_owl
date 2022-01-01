import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:edutech/Screens/image_helper.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';

class InstructorCreateCourse extends StatefulWidget {
  const InstructorCreateCourse({Key? key}) : super(key: key);
  static const String routeName = '/InstructorCreateCourse';
  static Route route() {
    return MaterialPageRoute(builder: (_) => InstructorCreateCourse());
  }

  @override
  State<InstructorCreateCourse> createState() => _InstructorCreateCourseState();
}

class _InstructorCreateCourseState extends State<InstructorCreateCourse> {
  var _catagoryValue;
  List<String> _catagorytype = <String>[
    'Catagory 1',
    'Catagory 2',
    'Catagory 3',
    'Catagory 4',
  ];

  File? selectedFileImage;
  File? selectedFileVideo;
  void _selectImageFromGallery(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFileImage = pickedFile;
      });
    } else {}
  }

  void _selectImageFromGalleryforVideo(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Video');
    if (pickedFile != null) {
      setState(() {
        selectedFileVideo = pickedFile;
      });
    } else {}
  }

  void _selectImageFromCamera(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromCamera(
        context: context,
        cropStyle: CropStyle.rectangle,
        title: 'Product Image');
    if (pickedFile != null) {
      setState(() {
        selectedFileImage = pickedFile;
      });
    } else {}
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _selectImageFromGallery(context);
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _selectImageFromCamera(context);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
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
                  SizedBox(height: width * 0.02),
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

                        label: Text('Title'),

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
                  selectCatagory(height, width, _catagorytype, _catagoryValue),
                  SizedBox(height: width * 0.04),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        _showPicker(context);
                      },
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(10.0),
                        color: Colors.white,
                        strokeWidth: 2.0,
                        child: Container(
                          height: width * 0.15,
                          child: selectedFileImage != null
                              ? Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Icon(Icons.upload),
                                      SizedBox(width: width * 0.02),
                                      Text(
                                        "Picture Uploaded!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: height * 0.02,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.upload,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: width * 0.02),
                                      Text(
                                        "Upload Course Picture",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: height * 0.02,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        _selectImageFromGalleryforVideo(context);
                      },
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(10.0),
                        color: Colors.white,
                        strokeWidth: 2.0,
                        child: Container(
                          height: width * 0.15,
                          child: selectedFileVideo != null
                              ? Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Icon(Icons.upload),
                                      SizedBox(width: width * 0.02),
                                      Text(
                                        "Video Uploaded!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: height * 0.02,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.upload,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: width * 0.02),
                                      Text(
                                        "Upload Trailer Video",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: height * 0.02,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Text(
                    "Course Price",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.02),
                  Card(
                    margin: EdgeInsets.zero,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        hintText: 'Course Price',

                        hintStyle: GoogleFonts.openSans(
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
                  Text(
                    "Write Course Description?*",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.02),
                  Card(
                    margin: EdgeInsets.zero,
                    child: TextFormField(
                      maxLines: 4,
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        hintText: 'Course Description',

                        hintStyle: GoogleFonts.openSans(
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
                  Text(
                    "What will Learner learn from your Course?*",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.02),
                  Card(
                    margin: EdgeInsets.zero,
                    child: TextFormField(
                      maxLines: 4,
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        hintText: 'Objectives',

                        hintStyle: GoogleFonts.openSans(
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
                  Text(
                    "What are the benifits for Learner from your Course?*",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045),
                  ),
                  SizedBox(height: width * 0.02),
                  Card(
                    margin: EdgeInsets.zero,
                    child: TextFormField(
                      maxLines: 4,
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.04, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: darkGrey,
                        filled: true,

                        hintText: 'benifits',

                        hintStyle: GoogleFonts.openSans(
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
                  SizedBox(height: width * 0.02),
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
                                InstructorCreateCourseModule1()));
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

  Widget selectCatagory(height, width, List<String> type, value) {
    return Container(
      //margin: EdgeInsets.fromLTRB(width * 0.06, 0.0, width * 0.06, 0.0),
      decoration: BoxDecoration(
        color: darkGrey,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                dropdownColor: darkGrey,
                items: type
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
                    value = selectedtype;
                  });
                },
                value: value,
                hint: Text(
                  "Category",
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
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
