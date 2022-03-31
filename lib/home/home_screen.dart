import 'package:flutter/material.dart';
import 'package:news_c5_online/home/categories.dart';
import 'package:news_c5_online/home/category/category_details.dart';
import 'package:news_c5_online/home/home_drawer.dart';
import 'package:news_c5_online/model/category.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background_pattern.png')
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Route News'),
        ),
        drawer: Drawer(
          child: HomeDrawer(onSideMenuItemClick),
        ),
        body:
            selectedCategory==null?
            CategoriesFragment(onCategoryClick):
                CategoryDetails(selectedCategory!)
        ,
      ),
    );
  }

  Category? selectedCategory=null;

  void onCategoryClick(Category category){
    // if someone clicked on Category
    // to change to category details view
    selectedCategory = category;
    setState(() {
    });
  }
  void onSideMenuItemClick(int clickedItem){
    Navigator.pop(context);
    if(clickedItem==HomeDrawer.CATEGORIES){
        selectedCategory=null;
        setState(() {
        });
    }else if (clickedItem == HomeDrawer.SETTINGS){

    }
  }
}
