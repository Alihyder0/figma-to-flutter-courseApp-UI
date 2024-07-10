
import 'package:course_app/widgets/my_vertical_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: 392,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff3C3A61).withOpacity(0.36),
                  offset: Offset(6, 4),
                  spreadRadius: 2,
                  blurRadius: 22
                )
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                  end: Alignment(0.0,1.5),
                  colors: [
                    Color(0xffF4C465),
                    Color(0xffC63956)
                  ]),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
              bottomRight: Radius.circular(22)
              )
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image(image: AssetImage('assets/circle.png')),
                Image(image: AssetImage('assets/saly_siting_on_ball.png'))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,top: 22,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                  itemCount: 5,
                  allowHalfRating: true,
                  direction: Axis.horizontal,
                  itemSize: 18,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context,_){
                return Icon(Icons.star,
                  color: Color(0xffF4C465),);
              }, onRatingUpdate: (rating){

              }),
              SizedBox(height: 11,),
              Text('Graphic Design Master',style: GoogleFonts.roboto().copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white
              ),),
              SizedBox(height: 29,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 124,

                        child: Stack(
                          children: [
                            Positioned(
                                child: Image.asset('assets/user_1.png')
                            ),
                            Positioned(
                              left: 26,
                                child: Image.asset('assets/user_2.png')
                            ),
                            Positioned(
                              left: 46,
                                child: Image.asset('assets/user_3.png')
                            ),
                            Positioned(
                              left: 68,
                                child: Image.asset('assets/user_4.png')
                            ),
                          ],
                        ),
                      ),
                      Text('+28K Members',style: GoogleFonts.roboto().copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xffCACACA)
                      ),
                      )
                    ],
                  ),
                  Container(
                    height: 47,
                    width: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xff353567),
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(Icons.thumb_up,
                      color: Colors.white,),),
                  )
                ],
              ),
              SizedBox(height: 31,),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                  itemBuilder: (context,index){
                return MyVerticalDetailPage();
              })

            ],
          ),
          )
        ],
      ),
    );
  }
}
