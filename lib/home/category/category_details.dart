import 'package:flutter/material.dart';
import 'package:news_c5_online/api_manager.dart';
import 'package:news_c5_online/home/category/tab_container.dart';
import 'package:news_c5_online/model/category.dart';
import 'package:news_c5_online/model/sources_response.dart';

class CategoryDetails extends StatelessWidget {
  Category category;
  CategoryDetails(this.category);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: FutureBuilder<SourcesResponse>(
                future: ApiManager.getSources(category.id),
                builder: (_,snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return Center(child: CircularProgressIndicator());
                  }
                  else if(snapshot.hasError){
                    return Column(children: [
                      Text('Something went wrong'),
                      ElevatedButton(onPressed: (){}, child: Text('Try Again'))
                    ],);
                  }
                  if("ok" != snapshot.data?.status){
                    // server response has code and message
                    return Column(children: [
                      Text(snapshot.data?.message ??""),
                      ElevatedButton(onPressed: (){}, child: Text('Try Again'))
                    ],);
                  }
                  // i got data from server
                  var sourcesList = snapshot.data?.sources ?? [];
                  return TabContainer(sourcesList);

            }),
          )
        ],
      );
  }
}
