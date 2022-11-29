import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart';
import 'package:sls/Individual_category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  final List<Map> categoriesList = List.generate(12, (index) => { "id":index, "name":"Category $index" }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu_rounded),
          title: Text("Category Screen"),
          actions: <Widget>[
            Padding(padding: EdgeInsets.all(10.0),
            )
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 250,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20
                ),
                itemCount: categoriesList.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/pexels-tara-winstead-6692138.jpg'),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),

                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.6),
                                  Colors.black.withOpacity(0.2)
                                ]
                            )
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                categoriesList[index]["name"],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(height: 28,),
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                child: Center(
                                    child:ElevatedButton(
                                        child: Text(' View All',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                      onPressed: () {
                                print('Pressed');
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Individual_Category_Screen()));
                                },
                                  onLongPress: () {
                                    print('Long press');
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Individual_Category_Screen()));
                                  },
                                    ),
                                        ),
                              ),
                            ]
                        ),
                      )
                  );
                }
            )
        )
    );
  }
  }
