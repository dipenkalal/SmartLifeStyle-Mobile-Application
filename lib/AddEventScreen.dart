import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main()=>runApp(new AddEventScreen());

class AddEventScreen extends StatelessWidget{
  const AddEventScreen({super.key});

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:"Smart Lifestyle",
      home:new Scaffold(
        // appBar:new AppBar(
        //     title:new Text('Add New Event')
        // ),
          body:Column(
            children: [
              Text("Add new event"),
              Container(
                height: 200,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.dateAndTime,
                  initialDateTime: DateTime(2022, 11, 16, 5, 33),
                  onDateTimeChanged: (DateTime newDateTime) {
                    //Do Some thing
                  },
                  use24hFormat: false,
                  minuteInterval: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter name of Event',
                  ),
                ),
              ),
              FloatingActionButton.extended(
                label:Text('Add Event'),
                backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.white,
                onPressed: () => {

                },
              ),
            ],
          )
      ),
    );
  }
}
