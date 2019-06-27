import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  Widget _buildText(String msg) {
    return Text(
      msg,
      style: TextStyle(fontSize: 30, fontFamily: 'amit'),
    );
  }

  Widget _buildImage() {
    return Image(
      image: AssetImage('assets/images/iron.png'),
      //image: NetworkImage(
      //   'https://cdn130.picsart.com/293396021005201.jpg?c256x256'),
    );
  }

  Widget _buildContainer(String msg, MaterialColor cl) {
    return Container(
        padding: EdgeInsets.all(40),
        width: 200,
        height: 200,
        color: cl,
        child: _buildText(msg));
    //child: _buildImage());
  }

  Widget _buildRow() {
    return Row(
      children: <Widget>[
        _buildContainer('Hello', Colors.red),
        _buildContainer('How', Colors.blue),
        _buildContainer('Hi', Colors.purple)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildRow(),
        _buildRow(),
        _buildRow()
        //_buildContainer('Hello', Colors.red),
        //_buildContainer('How', Colors.blue),
        //_buildContainer('Hi', Colors.purple)
      ],
    ));
    /*return Container(
      child: Image(
          image: NetworkImage(
              'https://www.sideshow.com/storage/product-images/903735/spider-man-advanced-suit_marvel_silo.png')),
    );*/
  }
}
