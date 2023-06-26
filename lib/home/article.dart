
class Article {
  String headUrl;
  String user;
  String action;
  String time;
  String title;
  String mark;
  String? imgUrl;
  int agreeNum;
  int commentNum;

  Article(this.headUrl, this.user, this.action, this.time, this.title, this.mark, this.agreeNum, this.commentNum, {this.imgUrl});
}

List<Article> articleList = [
  new Article(
      "https://pic3.zhimg.com/50/2b8be8010409012e7cdd764e1befc4d1_s.jpg",
      "learner",
      "赞同了回答",
      "2小时前",
      "在三体中，罗辑为什么会把控制权交给程心，难道他没有推测过后果吗？",
      "因为罗辑遵守了人类伦理。这个伦理大概就叫民主。 大刘其实是个典型的精英主义者，在他笔下...",
      32, 10,
      imgUrl: "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"
  ),
  new Article(
    "https://pic4.zhimg.com/50/v2-9a3cb5d5ee4339b8cf4470ece18d404f_s.jpg",
    "learner",
    "回答了问题",
    "5小时前",
    "我的手机系统是安卓。无意间发现自己的屏幕被人监控，请问怎样才能彻底摆脱被监控的处境呢？",
    "检查一下你手机里是不是被人装了什么软件，把你不认识的非系统软件删掉。不会删就去找手机店里的小哥，为什么这么多人...",
    38, 13,
  ),
  new Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "learner",
      "回答了问题",
      "7小时前",
      "如何评价2018年安徽省程序设计竞赛？",
      "带着政治任务和压力去打了比赛，所幸最后被高中生抬了一手。榜可以见另外某回答。大概经历就是前...",
      38, 13,
      imgUrl: "https://pic4.zhimg.com/v2-a7493d69f0d8f849c6345f8f693454f3_200x112.jpg"
  ),
  new Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "learner",
      "回答了问题",
      "7小时前",
      "极致的文明是什么样的？会真的像黑暗森林法则一样对其他低等生物进行屠杀吗？",
      "最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉...",
      38, 13,
      imgUrl: "https://pic3.zhimg.com/v2-b67be50be51e2e6d6112a64528683b09_b.jpg"
  ),
  new Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "q9adg",
      "回答了问题",
      "9小时前",
      "如何让别人心甘情愿地把他所学的教给我？",
      "#求学#非常简单，就一条：永远超额完成作业。给你布置作业，就是对你有所承诺，承诺了你做好了...",
      23105, 480,
  ),
  new Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "学医的小学生",
      "回答了问题",
      "7小时前",
      "有哪些《三国杀》玩家一看到就会笑的话？",
      "端游最最早的时候，刘备有一个连弩bug，他的激将是在装备连弩的时候无限用的。选刘备当主公，装备连弩，不管别人出不出杀，都可以无限激将。...",
      4463, 138,
  ),
  new Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "Neon柠檬",
      "回答了问题",
      "7小时前",
      "你见过最离谱的Midjourney生成图片是哪张？",
      "高端的脑洞往往只需要简单的咒语。...",
      507, 12,
      imgUrl: "https://pic1.zhimg.com/v2-2617e103990e4d9a2b166f4017dcaa82_b.jpg"
  ),
  new Article(
      "https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg",
      "Flutter",
      "回答了问题",
      "6小时前",
      "为什么学霸不喜欢给学渣讲题？",
      "给学神讲题：酸汤面的关键在于姜和葱...",
      10000, 5012,
      imgUrl: "https://img1.baidu.com/it/u=2398813048,1501152272&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=500"
  ),
];