import 'package:flutter/material.dart';

class KarAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xffffffff),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ClipPath(
              clipper: KarClipping(),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 80.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/wall/004.jpg",
                        )
                    )
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Container(
                    child: Icon(Icons.menu, color: Colors.white,),
                ),
                Expanded(
                  child: Text(
                    "DESIGNERS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KarClipping extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    double heightDiff = 20;
    double widthDiff = 80;

    path.lineTo(0.0, size.height-heightDiff);
    path.lineTo(widthDiff, size.height-heightDiff);

    path.quadraticBezierTo(
        size.width/4, size.height-heightDiff,
        size.width/2, size.height
    );
    path.quadraticBezierTo(
        size.width - (size.width/4), size.height,
        size.width-widthDiff, size.height-heightDiff,
    );

    path.lineTo(size.width - widthDiff, size.height-heightDiff);
    path.lineTo(size.width, size.height-heightDiff);
    path.lineTo(size.width, 0.0);
    //path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}