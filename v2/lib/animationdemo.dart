import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with TickerProviderStateMixin {
  AnimationController anim;
  String str = """
  Mark William Calaway (born March 24, 1965), better known by the ring name The Undertaker, is an American professional wrestler currently signed to WWE.[4]

Widely regarded as one of the greatest professional wrestlers of all time,[6] Calaway began his wrestling career in 1984, working under various gimmicks for World Class Championship Wrestling (WCCW) and other affiliate promotions. After signing for World Championship Wrestling (WCW) in 1989, he enjoyed a brief stint as a mid-card performer named "Mean Mark" Callous, prior to joining the World Wrestling Federation (WWF, now WWE) in 1990.

In WWE, Calaway was rebranded as "The Undertaker", and gained significant mainstream popularity as a horror-themed, macabre entity who employed scare tactics and held links to the supernatural. The Undertaker became one of the most prominent figures of the Attitude Era, featuring in various pivotal storylines and matches as WWF sustained a boom period in business in the late 1990s. His character transitioned into a biker in the early 2000s, before returning to a refined version of his previous gimmick in 2004. The Undertaker is known for The Streak, a series of 21 straight victories at WWE's flagship annual event, WrestleMania.
  """;

  @override
  void initState() {
    //super.initState();
    anim = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 300));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 256.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('WWE'),
                background: Hero(
                  tag: 1,
                  child: FadeInImage(
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: NetworkImage(
                        'https://i.pinimg.com/originals/d0/c4/d3/d0c4d37e750ca2b66630083355d111d1.jpg'),
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/d0/c4/d3/d0c4d37e750ca2b66630083355d111d1.jpg'),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  ScaleTransition(
                    scale: CurvedAnimation(
                        parent: anim,
                        curve: Interval(0.0, 1.0, curve: Curves.easeOut)),
                    child: Image.network(
                        'https://nfcomiccon.com/wp-content/uploads/2019/04/Undertaker_LG.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(str),
                  )
                ],
              ),
            )
          ],
//          child: Column(
//            children: <Widget>[
//              ScaleTransition(
//                scale: CurvedAnimation(
//                    parent: anim,
//                    curve: Interval(0.0, 1.0, curve: Curves.easeOut)),
//                child: Image.network(
//                    'https://nfcomiccon.com/wp-content/uploads/2019/04/Undertaker_LG.jpg'),
//              ),
//            ],
//          ),
        ),
      ),
      floatingActionButton: RaisedButton(
        elevation: 6,
        shape: CircleBorder(),
        color: Colors.lightBlue,
        onPressed: () {
          if (anim.isDismissed) {
            anim.forward();
          } else {
            anim.reverse();
          }
        },
        child: AnimatedBuilder(
          animation: anim,
          builder: (BuildContext context, Widget widget) {
            return Transform(
                transform: Matrix4.rotationZ(anim.value * 0.5),
                child: Icon(
                  anim.isDismissed ? Icons.add : Icons.home,
                  color: Colors.yellow,
                  size: 50,
                ));
          },
        ),
      ),
    );
  }
}
