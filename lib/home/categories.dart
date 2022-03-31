import 'package:flutter/material.dart';
import 'package:news_c5_online/home/category_widget.dart';
import 'package:news_c5_online/model/category.dart';

class CategoriesFragment extends StatelessWidget {
  var categories= Category.getCategories();
  Function onCategoryClick;
  CategoriesFragment(this.onCategoryClick);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Text('Pick your Category of interest'),
          Expanded(
            child: GridView.builder(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12
                ),
            itemBuilder: (_,index){
                  return InkWell(
                      onTap: (){
                        //call a callback to home screen to change layout
                        onCategoryClick(categories[index]);
                      },
                      child: CategoryWidget(categories[index], index));
            },itemCount: categories.length,),
          )
        ],
      ),
    );
  }
}
