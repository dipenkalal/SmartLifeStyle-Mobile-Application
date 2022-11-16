import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';
import 'AddEventScreen.dart';

void main()=>runApp(MaterialApp(home:Dashboard()));

class Dashboard extends StatelessWidget{
  // var now = new DateTime.now();
  // var formatter = new DateFormat('yyyy-MM-dd');
  // String date=formatter.format(now);
  // var format = DateFormat.yMd('ar');
  // var dateString = format.format(DateTime.now());
  String date="14-11-2022";

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:"Smart Lifestyle",
      home:new Scaffold(
        appBar:new AppBar(
          title:new Text('Dashboard')
        ),
        body:Column(
          children: [
            //Weather card
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(WeatherIcons.rain_wind),
                    title: Text('There are chances of rain'),
                    subtitle: Text("2 \u00b0C"),
                  ),
                ],
              ),
            ),
          //  Event Card
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(IconData(0xe122, fontFamily: 'MaterialIcons')),
                    title: Text('You have a meeting today'),
                    subtitle: Text("At 4pm"),
                  ),
                ],
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('rain-coat-11.jpg'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                height: 450,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.extended(
                    label:Text('Add new event'),
                    backgroundColor: Colors.lightBlueAccent,
                    foregroundColor: Colors.white,
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddEventScreen()),
                    )
                    },
                  ),
                  FloatingActionButton.extended(
                    label:Text('Add new clothes'),
                    backgroundColor: Colors.lightBlueAccent,
                    foregroundColor: Colors.white,
                    onPressed: () => {},
                  ),
                ],
              ),
            )
          ]
        )
      ),
    );
  }
}

