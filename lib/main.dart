import 'package:flutter/material.dart';
import 'models/Designer.dart';
import 'designer_list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "DESIGNERS",
            textAlign: TextAlign.center,
            style: TextStyle(

            ),
          ),
          leading: Icon(Icons.menu),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            DesignerListItem(Designer("Amanda Murphy", canContact:false, profileImage:'profile_001.jpg', experienceYears: 5,)),
            DesignerListItem(Designer("Grace Hartzel", canContact:false, profileImage:'profile_002.jpg', experienceYears: 2,)),
            DesignerListItem(Designer("Bella Hadid", canContact:false, experienceYears: 1,)),
            DesignerListItem(Designer("Julioa Bergshoeff", canContact:true, profileImage:'profile_001.jpg',)),
            DesignerListItem(Designer("Malaika Firth", canContact:true, profileImage:'profile_002.jpg',)),
            DesignerListItem(Designer("Amanda Murphy", canContact:true,)),
            DesignerListItem(Designer("Grace Hartzel", canContact:true, profileImage:'profile_001.jpg',)),
            DesignerListItem(Designer("Bella Hadid", canContact:true, profileImage:'profile_002.jpg',)),
            DesignerListItem(Designer("Julioa Bergshoeff", canContact:true,)),
            DesignerListItem(Designer("Malaika Firth", canContact:true, profileImage:'profile_001.jpg',)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("Lista"),),
              BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("User")),
            ]
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 70.0),
          child: FloatingActionButton.extended(
            onPressed: ()=> null,
            label: Text("Actividad"),
            icon: Icon(Icons.mic),
            backgroundColor: Colors.blueAccent,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      )
    );
  }
}
