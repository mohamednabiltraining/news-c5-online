import 'package:flutter/material.dart';
import 'package:news_c5_online/home/category/tab_item.dart';
import 'package:news_c5_online/model/sources_response.dart';
import 'package:news_c5_online/home/news/news_container.dart';

class TabContainer extends StatefulWidget {
  List<Source> sources;
  TabContainer(this.sources);

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: widget.sources.length,
        child: Column(
          children: [
            TabBar(
                isScrollable: true,
                indicatorColor: Colors.transparent,
                onTap: (index){
                  selectedIndex=index;
                  setState(() {});
                },
                tabs:widget.sources.map((source) => TabItem(source,
                selectedIndex == widget.sources.indexOf(source)
                )).toList()
            ),
            Expanded(child: NewsContainer(widget.sources[selectedIndex]))
          ],
        ));
  }
}
