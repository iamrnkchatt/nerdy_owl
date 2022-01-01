import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';

import 'image_helper.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({Key? key}) : super(key: key);
  static const String routeName = '/helpAndSupportScreen';

  static Route route() {
    return MaterialPageRoute(builder: (_) => HelpAndSupportScreen());
  }

  @override
  _HelpAndSupportScreenState createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  TextEditingController _messageController = TextEditingController();

  String _name = "";

  // Future<void> _getData() async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User? user = auth.currentUser;

  //   String userdoc = user!.uid;
  //   FirebaseFirestore.instance
  //       .collection("USERS")
  //       .doc(userdoc)
  //       .snapshots()
  //       .listen((event) {
  //     setState(() {
  //       _name = event.get("name").toString();

  //       print(_name);
  //     });
  //   });
  // }

  // Future<void> addItem() async {
  //   final CollectionReference _mainCollection =
  //       FirebaseFirestore.instance.collection('REPORTS');
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User? user = auth.currentUser;
  //   String userdoc = user!.uid;

  //   // DocumentReference documentReferencer =
  //   //     _mainCollection.doc(userdoc).collection('PRESCRIPTION').doc();

  //   StorageProvider _storageProvider =
  //       StorageProvider(firebaseStorage: FirebaseStorage.instance);
  //   String imageUrl =
  //       await _storageProvider.uploadReportImage(image: selectedFile);

  //   Map<String, dynamic> data = <String, dynamic>{
  //     "name": _name,
  //     "userId": userdoc,
  //     "userEmail": user.email,
  //     "message": _messageController.text,
  //     "url": imageUrl,
  //     //"status": "pending",
  //   };

  //   await _mainCollection.doc().set(data).whenComplete(() {
  //     setState(() {
  //       isLoading = false;
  //     });

  //     ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text('Report Submitted Successfully.')));
  //   }).catchError((e) => print(e));

  //   Navigator.of(context).pop();
  // }

  bool isLoading = false;

  File? selectedFile;
  void _selectImageFromGallery(BuildContext context) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
        context: context, cropStyle: CropStyle.rectangle, title: 'Image');
    if (pickedFile != null) {
      setState(() {
        selectedFile = pickedFile;
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
        selectedFile = pickedFile;
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
    return Container(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            backgroundColor: lightGrey,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: lightGrey,
              // iconTheme: IconThemeData.(),
              title: Text(
                "Help & Support",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(width * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: width * 0.18,
                            margin:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            child: Container(
                              // width: width * 0.1,
                              height: width * 0.12,

                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "09876543210",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: width * 0.025,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: width * 0.18,
                            margin:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            // tileColor: orange,
                            child: Container(
                              height: width * 0.12,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "info@vedasTech.com",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: width * 0.025,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: width * 0.18,
                            margin:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            // tileColor: orange,
                            child: Container(
                              height: width * 0.12,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    CupertinoIcons.globe,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "www.vedasTech.com",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: width * 0.025,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: width * 0.02),
                    SizedBox(height: width * 0.04),
                    Column(
                      children: [
                        Container(
                          child: TextFormField(
                            controller: _messageController,
                            // initialValue: "9876543210",
                            enabled: true,
                            style: GoogleFonts.poppins(
                                textStyle: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.bold)),
                            decoration: InputDecoration(
                              fillColor: darkGrey,
                              filled: true,
                              labelStyle:
                                  GoogleFonts.openSans(color: Colors.white),
                              labelText: 'Message',
                            ),
                          ),
                        ),
                        SizedBox(height: width * 0.05),
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
                                child: selectedFile != null
                                    ? Container(
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            // Icon(Icons.upload),
                                            SizedBox(width: width * 0.02),
                                            Text(
                                              "File Selected!",
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.upload,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: width * 0.02),
                                            Text(
                                              "Attach your Screenshot",
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
                              shadowColor:
                                  MaterialStateProperty.all(Colors.black),
                              elevation: MaterialStateProperty.all(20),
                              backgroundColor:
                                  MaterialStateProperty.all(lightGrey),
                            ),
                            onPressed: () {
                              setState(() {
                                isLoading = true;
                              });
                            },
                            child: isLoading == true
                                ? CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    'SUMBIT',
                                    style: GoogleFonts.poppins(
                                      fontSize: width * 0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
