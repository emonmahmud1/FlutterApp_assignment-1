import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          // Show a dialog at the bottom of the screen
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                // padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: <Widget>[
                    Text(
                      'This is bottom dialog',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 19.0),
                  ],
                ),
              );
            },
          );
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 35.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/my-img-about.jpg"),
                ),
                SizedBox(height: 20),
                Text(
                  "Emon Mahmud",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "emonmahmud083@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "My Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "3 Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
             decoration: BoxDecoration(
               color: Colors.white,

             borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20),
                 topRight: Radius.circular(20),
               ) ,
             ),


            padding: EdgeInsets.symmetric(horizontal: 30.0),
              //height: 100,
              


            ),
          )
        ],
      ),
    );
  }
}