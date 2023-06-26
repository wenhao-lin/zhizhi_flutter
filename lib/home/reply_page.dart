import 'package:flutter/material.dart';
import '../global_config.dart';
import 'question_page.dart';
import '../global_config.dart';

class Common {
  static Widget searchInput(BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Container(
            child: new TextButton.icon(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: new Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
              label: new Text(""),
            ),
            width: 60.0,
          ),
          new Expanded(
            child: new TextField(
              decoration: new InputDecoration.collapsed(
                  hintText: "搜索知之内容",
                  hintStyle: new TextStyle(color: GlobalConfig.fontColor)
              ),
            ),
          ),
          new Container(
            child: new IconButton(icon: new Icon(Icons.share, color: GlobalConfig.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
          ),
          new Container(
            child: new IconButton(icon: new Icon(Icons.list, color: GlobalConfig.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
        //color: Colors.red,
      ),
      height: 36.0,
      //padding: new EdgeInsets.only(top:8.0, bottom: 8.0, left: 8.0, right: 8.0),
    );
  }
}

class ReplyPage extends StatefulWidget {

  @override
  ReplyPageState createState() => new ReplyPageState();
}

class ReplyPageState extends State<ReplyPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: GlobalConfig.themeData,
        home: new Scaffold(
          appBar: new AppBar(
              title: Common.searchInput(context)
          ),
          body: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new TextButton(
                    onPressed: (){
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) {
                            return new QuestionPage();
                          }
                      ));
                    },
                    child: new Container(
                      child: new Text("为什么学霸不喜欢给学渣讲题？", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, height: 1.3, color: GlobalConfig.dark == true? Colors.white70 : Colors.black)),
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.topLeft,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(GlobalConfig.cardBackgroundColor),
                    ),
                  ),
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(bottom: new BorderSide(color: Colors.white10))
                  ),
                ),
                new Container(
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          flex: 1,
                          child: new Container(
                            child: new TextButton.icon(
                              onPressed: (){},
                              icon: new Icon(Icons.brush),
                              label: new Text("写回答"),
                                style: TextButton.styleFrom(
                                  foregroundColor: Theme.of(context).colorScheme.secondary, // 设置文本颜色为强调色
                                ),
                            ),
                            decoration: new BoxDecoration(
                                border: new BorderDirectional(end: new BorderSide(color: Colors.white10))
                            ),
                          ),
                        ),
                        new Expanded(
                          flex: 1,
                          child: new Container(
                            child: new TextButton(
                              onPressed: (){
                                Navigator.of(context).push(new MaterialPageRoute(
                                    builder: (context) {
                                      return new QuestionPage();
                                    }
                                ));
                              },
                              child: new Text("查看全部10000个回答 > "),
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: new BoxDecoration(
                      color: GlobalConfig.cardBackgroundColor,
                    ),
                    margin: new EdgeInsets.only(bottom: 10.0)
                ),
                new Container(
                  child: new ListTile(
                      leading: new CircleAvatar(
                          backgroundImage: new NetworkImage("https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg"),
                          radius: 20.0
                      ),
                      title: new Text("Flutter"),
                      subtitle: new Text("人生如逆旅，我亦是行人"),
                      trailing: new ElevatedButton.icon(
                        onPressed: (){},
                        icon: new Icon(Icons.add, color: Colors.white),
                        label: new Text("关注", style: new TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),
                      )
                  ),
                  decoration: new BoxDecoration(
                      color: GlobalConfig.cardBackgroundColor,
                      border: new BorderDirectional(bottom: new BorderSide(color: Colors.white10))
                  ),
                ),
                new Container(
                  child: new Text(
                      "给学神讲题：酸汤面的关键在于姜和葱……\n学神：懂了\n\n给学霸讲题：要做好吃的酸汤面，你要先用生姜和大葱炝锅，然后下面就好吃了。\n学霸：懂了\n\n给一般学生讲题：做酸汤面，你们要先把油烧到8成热，一小块姜切片，和大葱一段一起放入，烹至油香后倒入温水，水开下面。下面的过程大家都熟悉我就不再罗嗦了，等到水差不多准备调味，盐2g味精2g鸡精2g酱油半勺醋三勺，尝味道什么不足就加什么，然后起锅。\n学生：老师我做的不好吃怎么办？\n老师：你多练习就可以了，要不你做个我看看哪里有问题\n经过一番操作，绝大多数学生都懂了\n\n给学渣讲题：做酸汤面，要先把油烧到8成热……\n学渣：老师，什么是八成热\n老师：8成热就是油没有沸腾，但是比较热的情况\n学渣：那我怎么知道它比较热呢？\n老师：你把手背放在油面上方五公分，感觉到温度了么？\n学渣：我把手放上面烫到我怎么办？\n老师：你放在5公分的地方不会烫到\n学渣：那油会嘣开啊\n老师：油里只要没有水，是不会嘣的\n学渣：那我怎么保证油没有水呢？\n老师：三年级的时候教过，把锅洗干净后烧热，烧到锅底的水都蒸发了不就没有水了么？\n学渣：哦\n老师：然后你把手放在油面上面\n学渣：什么油？你刚刚不是让我把锅洗干净么？\n……",
                      style: new TextStyle(height: 1.4, fontSize: 16.0, color: GlobalConfig.fontColor), textAlign: TextAlign.start
                  ),
                  margin: const EdgeInsets.all(16.0),
                )
              ],
            ),
          ),
          bottomNavigationBar: new BottomAppBar(
              child: new Container(
                height: 60.0,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new TextButton.icon(
                        onPressed: (){},
                        label: new Text("赞同 10 K"),
                        style: ElevatedButton.styleFrom(backgroundColor: GlobalConfig.searchBackgroundColor,),
                        icon: new Icon(Icons.arrow_drop_up),),
                      margin: new EdgeInsets.only(left: 16.0),
                      height: 60.0,
                    ),
                    new Container(
                      child: new IconButton(onPressed: (){}, icon: new Icon(Icons.arrow_drop_down),padding: const EdgeInsets.all(0.0)),
                      margin: new EdgeInsets.only(left: 8.0),
                      height: 60.0,
                      decoration: new BoxDecoration(
                        borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
                        color: GlobalConfig.searchBackgroundColor,
                      ),
                    ),
                    new Expanded(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new IconButton(
                                onPressed: (){ print("icon");},
                                icon: new Container(
                                  child: new Column(
                                    children: <Widget>[
                                      new Icon(Icons.favorite, size: 18.0, color: GlobalConfig.fontColor,),
                                      //new Text("感谢", style: new TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),)
                                    ],
                                  ),
                                  height: MediaQuery.of(context).size.height,
                                )
                            ),
                            new IconButton(
                                onPressed: (){ print("icon");},
                                icon: new Container(
                                  child: new Column(
                                    children: <Widget>[
                                      new Icon(Icons.star, size: 18.0, color: GlobalConfig.fontColor,),
                                      //new Text("收藏", style: new TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),)
                                    ],
                                  ),
                                  //margin: new EdgeInsets.only(left: 8.0),
                                  height: MediaQuery.of(context).size.height,
                                )
                            ),
                            new IconButton(
                                onPressed: (){ print("icon");},
                                icon: new Container(
                                  child: new Column(
                                    children: <Widget>[
                                      new Icon(Icons.mode_comment, size: 18.0, color: GlobalConfig.fontColor,),
                                      //new Text("评论", style: new TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),)
                                    ],
                                  ),
                                  //margin: new EdgeInsets.only(left: 8.0),
                                  height: MediaQuery.of(context).size.height,
                                )
                            ),
                          ],
                        ),
                    )

                  ],
                ),
                color: GlobalConfig.cardBackgroundColor,
              )
          ),
        )
    );
  }

}