




import 'package:flutter/material.dart';

import 'package:whatsapp/storybtn.dart';

import 'chattile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30.0);
  List<String> imageUrl = [
  "https://images.newindianexpress.com/uploads/user/imagelibrary/2019/12/28/original/Mammootty_.jpg?w=400&dpr=2.6",
  "https://images.theconversation.com/files/304864/original/file-20191203-67028-qfiw3k.jpeg?ixlib=rb-1.1.0&rect=638%2C2%2C795%2C745&q=20&auto=format&w=320&fit=clip&dpr=2&usm=12&cs=strip",
  "https://images.mid-day.com/images/images/2023/nov/mammootty-reviews_d.jpg",
  "https://static.toiimg.com/photo/91581644.cms",
  "https://images.ctfassets.net/ub3bwfd53mwy/5WFv6lEUb1e6kWeP06CLXr/acd328417f24786af98b1750d90813de/4_Image.jpg?w=750",
  "https://media.diariouno.com.ar/p/c63a2d96a25b71b0dc6909a18b5b2330/adjuntos/298/imagenes/009/109/0009109929/1200x0/smart/enzo-fernandezjpg.jpg",
  "https://feeds.abplive.com/onecms/images/uploaded-images/2022/11/11/622dcfcc07b0ddcef1536d5954b36b8d1668143300228127_original.jpg?impolicy=abp_cdn&imwidth=650",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Zayn_Wiki_%28cropped%29.jpg/800px-Zayn_Wiki_%28cropped%29.jpg",

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("WhatsApp ",),titleTextStyle: TextStyle(color: Colors.white,fontSize: 20),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 20,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert,color: Colors.white,size: 20,),
          ),
          IconButton(
          onPressed: () {},
    icon: Icon(Icons.search,color: Colors.white,size: 22,),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(imageUrl[0], "nikhila"),
                  storyButton(imageUrl[1], "mrbean"),
                  storyButton(imageUrl[2], "mammooty"),
                  storyButton(imageUrl[3], "mamitha "),
                  storyButton(imageUrl[4], "cates"),
                  storyButton(imageUrl[5], "enzo"),
                  storyButton(imageUrl[6], "sanju"),
                ],
              ),
            ),
          ),

          //Now let's create our chat timeline
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding:
                const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    //Now let's create our chat tile custom widget
                    chatTile(imageUrl[0], "nikhila", "msg", "9:27Am", false),
                    chatTile(imageUrl[1], "mrbean", "msg", "8:5Am", true),

                    chatTile(imageUrl[2], "mammooty", "msg", "6:17Am", true),
                    chatTile(
                        imageUrl[3], "mamitha", "msg", "Yesterday,", false),
                    chatTile(
                        imageUrl[5], "enzo", "msg", "Yesterday", false),
                    chatTile(imageUrl[4], "cates", "msg", "San 20", true),
                    chatTile(imageUrl[6], "sanju", "msg", "San20", true),
                    chatTile(imageUrl[7], "zain", "msg", "San20", true),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}











