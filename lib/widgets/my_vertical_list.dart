import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class MyVerticalList extends StatelessWidget {
  const MyVerticalList({super.key,
    required this.courseTitle,
    required this.courseImage,
    required this.courseDuration,
    required this.courseRating});

  final String courseTitle,courseImage,courseDuration;
  final double courseRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 92,
              width: MediaQuery.of(context).size.width- (MediaQuery.of(context).size.width*0.08),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    offset: const Offset(0, 4),
                    blurRadius: 13
                  )
                ],
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff3E3A6D),
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 26,bottom: 19),
            child: Row(
              children: [

                Stack(
                  alignment: Alignment.bottomCenter,
                  children:[
                    Container(
                      height: 84,
                      width: 117,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                        color: const Color(0xffFFB4B4)
                      ),
                    ),
                    Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(courseImage),
                        )
                    ),
                  ),
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(courseTitle,style: GoogleFonts.roboto().copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Colors.white
                      ),),
                      const SizedBox(height: 4,),
                      Text(courseDuration,style: GoogleFonts.roboto().copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.grey
                      ),),
                      RatingBar.builder(
                        initialRating: courseRating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                          itemBuilder: (context,_){
                        return const Icon(Icons.star,
                        color: Color(0xffF4C465),);
                      }, onRatingUpdate: (rating){
                          print(rating);
                      })


                    ],
                  ),
                ),

              ],
            ),
            ),
            Positioned(
              right: 0,
                bottom: 24,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.06,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEB53A2),
                  ),
                  child: const Icon(Icons.play_arrow,color: Colors.white,),
                )
            )
          ],
        ),
      ),
    );
  }
}
