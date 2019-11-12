import 'package:flutter/material.dart';
import 'models/Designer.dart';

class DesignerListItem extends StatelessWidget{

  Designer designer;

  DesignerListItem(this.designer);

  @override
  Widget build(BuildContext context) {

    final emailDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
            right: 10.0,
            bottom: 5.0,
          ),
          child: Text(
            designer.name,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 18.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
            bottom: 5.0,
          ),
          child: Text(
            "Experiencia ${designer.experienceYears} años",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );

    final photo = Padding(
      padding: EdgeInsets.all(3),
      child: Container(
        alignment: Alignment.centerLeft,
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(designer.getProfileImagePath())
          ),
        ),
      )
    ) ;

    final iconContact = Container(
      width: 50.0,
      height: 50.0,
      child: Icon(
        Icons.mail,
        color: Colors.red,
      ),
      alignment: Alignment.center,
    );

    final iconContactNo = Container(
      width: 50.0,
      height: 50.0,
      child: Icon(
          Icons.mail_outline,
          color: Colors.grey
      ),
      alignment: Alignment.center,
    );

    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Row(
        children: <Widget>[
          photo,
          Expanded(child: emailDetails),
          designer.canContact ? iconContact : iconContactNo
        ],
      ),
    );
  }

}