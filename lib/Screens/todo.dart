import 'package:cour4task3/Screens/addltask.dart';
import 'package:cour4task3/Screens/all.dart';
import 'package:cour4task3/Screens/complate.dart';
import 'package:cour4task3/Screens/notcomplate.dart';
import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class TOdOList extends StatefulWidget {

  @override
  _TOdOListState createState() => _TOdOListState();
}

class _TOdOListState extends State<TOdOList> {
  @override
  Widget build(BuildContext context) {
    return   DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          
          //title: Text('To Do List',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
title: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                ' TO DO LIST ',
                textStyle: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                  color: Colors.white
                ),
              ),
            ],
               totalRepeatCount: 10,
               pause: const Duration(milliseconds: 2500),
               displayFullTextOnTap: true,
               stopPauseOnTap: true,
          ),
          centerTitle: true,
          elevation: 8,
          backgroundColor: Colors.black,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.favorite_rounded,color: Colors.red,), text: 'Complate ',),
              Tab(icon: Icon(Icons.favorite_border,color: Colors.red,), text: 'Not Complate'),
              Tab(icon: Icon(Icons.favorite_sharp,color: Colors.blue,), text: 'A l l  ')
            ],
          ),
        ),
        body: TabBarView(
          children: [ScreenA(), ScreenB(),ScreenC()],
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
    AddTask()
    
    ));
        },
        child: Icon(Icons.add,color: Colors.red,),
        backgroundColor: Colors.black,
        ),
      ),
    );
      
    
  }
}