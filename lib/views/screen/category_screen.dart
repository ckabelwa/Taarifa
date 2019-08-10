import 'package:flutter/material.dart';
import 'package:pt_project_01/models/category.dart';
import 'package:pt_project_01/views/components/cards/category_card.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text('Categories',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10)
          ]),
        ),
        SliverGrid(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Padding(
              padding:  EdgeInsets.only(left: index % 2 == 0 ? 20 : 0,right: index % 2 !=0? 20:0),
              child: CategoryCard(category: categories[index],),
            );
          },
          childCount: categories.length),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5),
        )
      ],
    );
  }
}
