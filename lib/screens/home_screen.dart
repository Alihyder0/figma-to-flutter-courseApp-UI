import 'package:course_app/screens/course_detail_screen.dart';
import 'package:course_app/widgets/my_horizontal_list.dart';
import 'package:course_app/widgets/my_vertical_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
              horizontal: 10 ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Online ',style: GoogleFonts.roboto().copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.white
                ),),
                SizedBox(height: 11,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=> CourseDetailScreen()
                    )
                    );
                  },
                  child: Text('Master Class',style: GoogleFonts.roboto().copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 36,
                    color: Colors.white
                  ),),
                )
              ],
            ),
            SizedBox(height: 22,),
            SizedBox(
              height: 349,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                  itemBuilder: (context, index){
                return MyHorizontalList(
                    startColor: 0xff9288E4,
                    endColor: 0xff534EA7,
                    courseHeadline: 'Recommended',
                    courseTitle: 'UI/UX Designer\nBeginner',
                    courseImage: 'assets/Saly-10.png');
              }),
            ),
            SizedBox(height: 32,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Free Online Class',style: GoogleFonts.roboto().copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                    color: Colors.white
                ),),
                Text('From over 80 Lectures',style: GoogleFonts.roboto().copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.grey
                ),)
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
                itemBuilder: (context, index){
                  return MyVerticalList(courseTitle: 'Flutter Developer',
                      courseImage: 'assets/flutter_course.png',
                      courseDuration: '8 hours',
                      courseRating: 3.0);
                })

          ],
        ),
      ),
    );
  }
}
