import 'package:flutter/material.dart';

class StackLayout2 extends StatelessWidget {
  bool sizedBox = true;

  @override
  Widget build(BuildContext context) {
    if (sizedBox) {
      return Stack(
        alignment: AlignmentDirectional.topEnd,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://vignette.wikia.nocookie.net/xmenmovies/images/7/7c/Deadpool_%28Thumbs_Up_-_Transparent%29.png/revision/latest?cb=20170324222613'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            bottom: 48.0,
            left: 130.0,
            right: 10.0,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "DEAD POOL",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        "Deadpool is a 2016 American superhero film based on the Marvel Comics character of the same name. Distributed by 20th Century Fox, it is the eighth installment of the X-Men film series and the first standalone Deadpool film"),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }
  }
}
