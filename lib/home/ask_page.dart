import 'package:flutter/material.dart';
import '../global_config.dart';

class AskPage extends StatefulWidget {

  @override
  AskPageState createState() => new AskPageState();
}

class AskPageState extends State<AskPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextButton.icon(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: new Icon(Icons.clear, color: Colors.black),
                  label: new Text(""),
                ),
                new Expanded(
                  child: new Container(
                    child: new Text("提问", textAlign: TextAlign.center, style: new TextStyle(color: Colors.black)),
                  )
                ),

                new TextButton(
                  onPressed: (){},
                  child: new Text("下一步", style: new TextStyle(color: Colors.white12))
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),

        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                child: new TextField(
                  decoration: new InputDecoration(
                      hintText: "输入问题并以问号结尾",
                      hintStyle: new TextStyle(color: Color.fromARGB(255, 189, 189, 189))
                  ),
                ),
                margin: const EdgeInsets.all(16.0),
                //color: Colors.white,
              ),
              new Container(
                child: new TextField(
                  decoration: new InputDecoration(
                      hintText: "对问题补充说明，可以更快获得解答（选填)",
                      hintStyle: new TextStyle(color: Color.fromARGB(255, 188, 188, 188))
                  ),
                  maxLines: 30,
                ),
                margin: const EdgeInsets.all(16.0),
                //color: Colors.white,
              ),
            ],
          ),
        )
      )
    );
  }

}