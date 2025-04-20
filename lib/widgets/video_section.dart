import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget{
  @override

  List videoList=[
    'Introduction to flutter',
    'Installing flutter on windows',
    'Setup emulator on windows',
    'Creating our first app'
  ];
  Widget build (BuildContext){
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index){
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index ==0 ? Colors.deepPurpleAccent: Colors.deepPurpleAccent.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.play_arrow_rounded,
            color: Colors.white,
            size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 min 50 sec"),
        );
      }
    );
  }
}