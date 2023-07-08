import 'package:flutter/material.dart';
import 'package:new_sample/controller/fetchNews.dart';
import 'package:new_sample/model/newsArt.dart';
import 'package:new_sample/view/Widgets/newcontainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  late NewsArt newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.horizontal,
          onPageChanged: (value) {
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {
            return isLoading ? Center(child: CircularProgressIndicator(),) : Newscontainer(
                imgUrl: newsArt.imgUrl,
                newsCnt: newsArt.newsCnt,
                newHead: newsArt.newHead,
                newsDes: newsArt.newsDes,
                newsUrl: newsArt.newurl);
          }),
    );
  }
}