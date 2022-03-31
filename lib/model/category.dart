import 'package:flutter/cupertino.dart';

class Category{
  String id;
  String title;
  String image;
  int colorCode;
  Category(this.id,this.title,this.image,this.colorCode);

  static List<Category> getCategories(){

    return [
      Category('sports', 'Sports', 'assets/images/sports.png', 0xFFC91C22),
      Category('business', 'Business', 'assets/images/business.png', 0xFFCF7E48),
      Category('entertainment', 'Entertainment', 'assets/images/entertainment.png', 0xFF4882CF),
      Category('health', 'Health', 'assets/images/health.png', 0xFFED1E79),
      Category('science', 'Science', 'assets/images/science.png', 0xFFF2D352),
      Category('technology', 'Technology', 'assets/images/technology.png', 0xFF003E90),
      Category('general', 'General', 'assets/images/general.png', 0xFF4882CF),
    ];
  }
}