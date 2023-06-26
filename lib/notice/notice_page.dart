import 'package:flutter/material.dart';
import '../global_config.dart';
import '../data/Data.dart';

class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => new _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Center(
              child: new Text("通知", style: new TextStyle(color: Colors.black)),
            ),
            backgroundColor: Colors.white,
          ),

          // body: new Container(
          //   decoration: new BoxDecoration(
          //     image: new DecorationImage(
          //       image: new AssetImage("image/notice.jpg"),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),

          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: List.generate(
                    Data.message.length,
                    (index) => MessageItem(
                        Data.message[index]["avater"],
                        Data.message[index]["nickName"],
                        Data.message[index]["time"],
                        Data.message[index]["lastMessage"])),
              ),
            ),
          ),
        ),

        theme: GlobalConfig.themeData);
  }

  Padding MessageItem(
      String avater, String nickName, String time, String lastMesaage) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 5, left: 17, right: 15),
      child: Row(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: Image.asset(
                avater,
                width: 50,
              ),
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Colors.grey.shade300, width: 0.5))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      nickName,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      time,
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Text(lastMesaage,
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
