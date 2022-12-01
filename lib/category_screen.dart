import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sls/category_item.dart';
import 'package:sls/data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      const Text("Smart LifeStyle"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
      children: Dummy_Categories.map<Widget>((catData) => Categoryitem(catData.title,catData.color,catData.id)).toList() ,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 150,
        childAspectRatio: 1,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    ),);

  }
}
