// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  List catNames=[
    "Categoria",
    "Clases",
    "Cursos GRATIS",
    "Libros",
    "Cursos en vivo",
    "LeaderBoard",
  ];

  List<Color>catColors=[
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.purple,
    Colors.lightGreenAccent,
  ];

  List <Icon>catIcons=[
    Icon(Icons.category, color: Colors.white, size:30),
    Icon(Icons.video_library, color: Colors.white, size:30),
    Icon(Icons.assignment, color: Colors.white, size:30),
    Icon(Icons.store, color: Colors.white, size:30),
    Icon(Icons.play_circle_fill, color: Colors.white, size:30),
    Icon(Icons.emoji_events, color: Colors.white, size:30),
  ];

  List imgList=[

  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left:15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard, 
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(padding: EdgeInsets.only(left:3, bottom:15),
                child: Text(
                    'Hola, Bienvenida!', 
                    style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:5, bottom: 20 ),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Buscar curso aqui...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search, 
                        size: 25, 
                        ),
                      ),
                    ),
                  ),              
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20, left:15, right:20),
          child: Column(children: [
            GridView.builder(
              itemCount: catNames.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.1,
              ),
            itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: catColors[index],
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: catIcons[index],),
                    ),
                  ],
                );
                }, 
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Courses",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text("See All",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.purple,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  ),
             itemBuilder: ,
              ), 
            ],
            ),
          ),
        ],
      ),
    );
  }
}