import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorizontalList extends StatelessWidget {
  const MyHorizontalList({super.key,
    required this.startColor,
    required this.endColor,
    required this.courseHeadline,
    required this.courseTitle,
    required this.courseImage});

  final int startColor, endColor;
  final String courseHeadline, courseTitle, courseImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 26),
      child: Container(

        height: 349,
        width: 246,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
              end: Alignment(1 ,0.0),
              colors: [
                Color(startColor),
                Color(endColor)

          ]
          ),
          borderRadius: BorderRadius.circular(22)
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15,
                left: 11,
                child: Container(
                  height: 39,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(

                    color: Color(0xffAFA8EE),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Center(
                    child: Text(courseHeadline ,style: GoogleFonts.roboto().copyWith(
                      fontSize: 16,
                      color: Colors.white

                    ),),
                  ),

                )
            ),
            Positioned(
                top: 80,
                left: 14,
                child: Center(
                  child: Text(courseTitle ,style: GoogleFonts.roboto().copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white

                  ),),
                )
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset('assets/Ellipse.png',scale: 1,)),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(courseImage,scale: 1,))

          ],
        ),
      ),
    );
  }
}
