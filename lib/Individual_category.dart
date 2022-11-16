import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Category.dart';

class Individual_Category_Screen extends StatefulWidget {
  const Individual_Category_Screen({Key? key}) : super(key: key);

  @override
  State<Individual_Category_Screen> createState() => _Individual_Category_ScreenState();
}

class _Individual_Category_ScreenState extends State<Individual_Category_Screen> {

  final List<String> _listItem = [
    'assets/michael-dziedzic-nc11Hg2ja-s-unsplash.jpg',
    'assets/tandem-x-visuals-uHGhuk6Bheo-unsplash.jpg',
    'assets/david-clarke-DMziBO1MEvI-unsplash.jpg',
    'assets/george-bakos-bkp6nUxV-w0-unsplash.jpg',
    'assets/julian-paolo-dayag-cmW9rh6FIks-unsplash.jpg',
    'assets/pascal-meier-bQdDValtdow-unsplash.jpg',
    'assets/giorgio-trovato--vCbK4kV838-unsplash.jpg',
    'assets/kelly-sikkema-huT1A8nW_Ho-unsplash.jpg',
    'assets/cristiano-caligaris-SjhF0GMI0zY-unsplash.jpg',
    'assets/oleg-laptev-7rnr6Moe7PI-unsplash.jpg',
    'assets/david-waizel-YkKdn82WcZ0-unsplash.jpg',
    'assets/corentin-marzin-K_RW_j7e3KI-unsplash.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu_rounded),
        title: Text("Category Name Screen"),
        actions: <Widget>[
          Padding(padding: EdgeInsets.all(10.0),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius:BorderRadius.circular(10)
              ),
              child: Center(child: Text("0"),),
            ),)
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0 ),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: GridView.count(crossAxisCount: 2,
                    padding: EdgeInsets.all(20),
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                    children: _listItem.map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover
                            )
                        ),
                        child: Transform.translate(
                          offset: Offset(50,-50),
                          child: Container(
                            height: 20,
                            width: 20,
                            margin: EdgeInsets.symmetric(horizontal: 65, vertical: 60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: Icon(Icons.favorite_border, size: 25,),
                          ),
                        ),
                      ),
                    )).toList(),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
