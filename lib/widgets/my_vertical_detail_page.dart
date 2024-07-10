import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyVerticalDetailPage extends StatelessWidget {
  const MyVerticalDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 0),
      child: SizedBox(
        height: 100,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children:[
            Container(
            height: 82,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: Color(0xff3E3A6D)
            ),
          ),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 82,
                            width: 99,
                            decoration: BoxDecoration(
                              color: Color(0xffDB61A1),
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                          Positioned(
                              left: -20,
                              top: -20,
                              child: Image.asset('assets/gravity.png' )),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Introduction',style: GoogleFonts.roboto().copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18
                      ),),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text('12 minutes',style: GoogleFonts.roboto().copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 14
                          ),),
                          SizedBox(width: 12,),
                          Container(
                            height: 20,
                            width: 39,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffEB53A2)
                            ),
                            child: Center(
                              child: Text('Free',style: GoogleFonts.roboto().copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 14
                              ),),
                            ),
                          ),


                        ],
                      ),
                      SizedBox(height: 16,)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),);
  }
}
