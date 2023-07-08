import 'package:flutter/material.dart';
import 'package:new_sample/view/detail_view.dart';

class Newscontainer extends StatelessWidget {
  String imgUrl;
  String newHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  Newscontainer({super.key,
    required this.imgUrl,
    required this.newHead,
    required this.newsDes,
    required this.newsCnt,
    required this.newsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Image.network(imgUrl,height: 300,width: MediaQuery.of(context).size.width,fit: BoxFit.cover),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(
                newHead.length>70? "${newHead.substring(0,70)}":newHead,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(newsDes ,style: TextStyle(fontSize: 12,color: Colors.grey)),

              SizedBox(height: 16),
              Text(
                  newsCnt.length>200?newsCnt.substring(0,200): "${newsCnt.toString().substring(0,newsCnt.length)}",
                    style: TextStyle(fontSize: 16,)
              ),
            ],
          ),
        ),

        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>
                    DetailViewScreen(newsUrl: newsUrl)));
              },
                  child: Text("Read More")),
            ),
          ],
        ),
            SizedBox(height: 20,),
      ]),
    );
  }
}
