import 'package:flutter/material.dart';
import 'package:newsapp/Wigets/category_listview.dart';
import 'package:newsapp/Wigets/news_listview.dart';
import 'package:newsapp/Wigets/news_tile.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: RichText(
          text: const TextSpan(
              text: 'News',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: 'Cloud', style: TextStyle(color: Colors.yellow))
              ]),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
               SliverToBoxAdapter(
                child: CategoryListview(),
              ),
               SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              NewsListView(),
            ],
          )),
    );
  }
}
