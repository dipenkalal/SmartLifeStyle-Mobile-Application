import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';
import 'AddEventScreen.dart';

void main()=>runApp(MaterialApp(home:Dashboard()));

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  static const String _title = 'Smart Lifestyle';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // var now = new DateTime.now();
  // var formatter = new DateFormat('yyyy-MM-dd');
  // String date=formatter.format(now);
  // var format = DateFormat.yMd('ar');
  // var dateString = format.format(DateTime.now());
  String date="14-11-2022";
  int selected_page=0;
  void _onItemTapped(int index) {
    setState(() {
      selected_page = index;
    });
  }
  @override
  Widget build(BuildContext context){
    List<Widget> _pages = <Widget>[
      Column(
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
        ],),
      Column(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.camera),
                  title: Text('Scan your clothes'),
                ),
              ],
            ),
          ),
        ],
      ),
      AddEventScreen(),
    ];
    return new MaterialApp(
      title:"Smart Lifestyle",
      home:new Scaffold(
        appBar:new AppBar(
            title:new Text('Dashboard')
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Scan Clothes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Add Event',
            ),
          ],
          onTap: _onItemTapped,
        ),
        body:Center(
            child:_pages.elementAt(selected_page)
        ),
        // Container(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       FloatingActionButton.extended(
        //         label:Text('Add new event'),
        //         backgroundColor: Colors.lightBlueAccent,
        //         foregroundColor: Colors.white,
        //         onPressed: () => {
        //         Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const AddEventScreen()),
        //         )
        //         },
        //       ),
        //       FloatingActionButton.extended(
        //         label:Text('Add new clothes'),
        //         backgroundColor: Colors.lightBlueAccent,
        //         foregroundColor: Colors.white,
        //         onPressed: () => {},
        //       ),
        //     ],
        //   ),
        // )


      ),
    );
  }
}

