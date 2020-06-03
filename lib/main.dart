import 'package:flutter/material.dart';

void main() {
runApp(new MaterialApp(
  title: "my first app",
  home: new Home(),
));
}

class Home extends StatelessWidget{
  void _click(){debugPrint("test");}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: new Text("App Bar"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed:()=> debugPrint("icon pressed")),
          new IconButton(icon: new Icon(Icons.menu), onPressed:_click),
        ],
      ),
      backgroundColor: Colors.green.shade100,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Text("item 1", style: new TextStyle(fontWeight: FontWeight.w800,color: Colors.red)),
            new Text("item 2", style: new TextStyle(fontWeight: FontWeight.w800,color: Colors.blue)),
          ],
        )
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.lightGreen,
         child: new Icon(Icons.add),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: Icon(Icons.call),title: new Text("Call us")),
        new BottomNavigationBarItem(icon: Icon(Icons.map),title: new Text("Visit us")),
      ]),
    );
  }
  
}

