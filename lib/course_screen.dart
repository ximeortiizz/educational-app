import 'package:educational_app/widgets/description_rename.dart' show DescriptionSection;
import 'package:flutter/material.dart';

import 'widgets/video_section.dart' show VideoSection;

class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img);
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideosSection=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Colors.deepPurpleAccent,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 176, 141, 183),
                  image: DecorationImage(
                      image: AssetImage("lib/assets/${widget.img}.png"))),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.deepPurpleAccent,
                    size: 45,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("${widget.img} Complete Course", style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Created by EmpowerShe",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7),
            ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "55 Videos",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5)
              ),
            ),
            SizedBox(
              height: 20,
            ), 
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 176, 141, 183),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideosSection ? Colors.deepPurpleAccent : Colors.deepPurpleAccent.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideosSection=true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                      child: Text(
                        "Videos", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideosSection ? Colors.deepPurpleAccent.withOpacity(0.6): Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideosSection=false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                      child: Text(
                        "Description", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10), 
              isVideosSection ? VideoSection():DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
