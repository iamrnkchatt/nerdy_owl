import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({
    Key? key,
    required this.width,
    required this.text,
  }) : super(key: key);

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: width * 0.15,
        padding: EdgeInsets.symmetric(horizontal: width * 0.025),
        child: Card(
          // elevation: 10.0,
          color: darkGrey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.04,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class OptionList extends StatelessWidget {
  const OptionList({
    Key? key,
    required this.width,
    required this.text,
    required this.leading,
    required this.onTap,
  }) : super(key: key);

  final double width;
  final String text;
  final Widget leading;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: width * 0.04,
      ),
      child: GestureDetector(
        onTap: onTap(),
        child: ListTile(
          minVerticalPadding: width * 0.03,
          tileColor: darkGrey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: leading,
          title: Text(
            text,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.04,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
