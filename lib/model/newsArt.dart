class NewsArt{
      String imgUrl;
      String newHead;
      String newsDes;
      String newsCnt;
      String newurl;

      NewsArt({
        required this.imgUrl,
        required this.newHead,
        required this.newsDes,
        required this.newsCnt,
        required this.newurl
      });


      static NewsArt fromAPItoapp(Map<String,dynamic>article)
      {
        return NewsArt(
            imgUrl: article["urlToImage"]?? "https://img.freepik.com/free-vector/breaking-news-concept_23-2148514216.jpg?w=2000",
            newHead: article["title"]?? "Unable to load",
            newsDes: article["description"]?? "Unable to load",
            newsCnt: article["content"]??"Unable to load",
            newurl: article["url"]?? "https://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:en");
      }
}