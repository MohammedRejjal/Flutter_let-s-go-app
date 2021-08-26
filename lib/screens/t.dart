import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

 

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> gambar = [
    "assets\al batra.jpg",
    "assets\bluegreen.jpg",
    "assets\farm.jpg",
    "assets\kyoto.jpg",
    "assets\japan.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    timeDilation = 3.0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Hero Animation"),
      ),
      body: Container(
        child: PageView.builder(
            controller: new PageController(viewportFraction: 0.9),
            itemCount: gambar.length,
            itemBuilder: (BuildContext context, int i) {
              return new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new Material(
                      elevation: 10,
                      child: new Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          new Hero(
                            tag: gambar[i],
                            child: Material(
                              child: new InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          new HalamanDua(gambar: gambar[i]),
                                    )),
                                child: new Image.asset(
                                  "img/" + gambar[i],fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              );
            }),
      ),
    );
  }
}

class HalamanDua extends StatelessWidget {
  HalamanDua({required this.gambar});
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gambar"),
      ),
      body: new Stack(
        children: <Widget>[
          Center(
            child: new Hero(
              tag: gambar,
              child: new ClipOval(
                child: new SizedBox(
                  width: 300,
                  height: 300,
                  child: new Material(
                    child: new InkWell(
                      onTap: () => Navigator.pop(context),
                      child: new Image.asset("img/" + gambar,fit: BoxFit.cover,),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}