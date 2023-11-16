
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Task_screen_2 extends StatelessWidget {
  const Task_screen_2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
           title: Text('my app', textAlign: TextAlign.center),
           centerTitle: true ,
           backgroundColor:Colors.green,

         )  ,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,


        children: [
          Container(
            color: Colors.red,
            height: 100,
            width: 100,

            child: Center(
                child: Text('app1'),
            ),


          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            child: Center(
              child: Text('app2'),
            ),

          )
        ],
      ),

    );
  }

}
