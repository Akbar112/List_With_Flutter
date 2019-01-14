import'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title:"List",
    home:new Home(),
  ));//material app
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
    appBar: new AppBar(
      backgroundColor: Colors.orange,
      title: new Text("Daftar Bahasa"),
    ),
    body: new ListView(
      children:<Widget>[

        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/html.jpg", judul:"HTML",),
        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/css.jpg", judul:"CSS",),
        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/js.jpg", judul:"JavaScript",),
        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/php.jpg", judul:"PHP",),
        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/canvas.jpg", judul:"Canvas",),
        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/boots.jpg", judul:"Bootstrap",),
        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/ci.jpg", judul:"CodeIgniter",),
        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/game.jpg", judul:"Game",),
        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/ai.jpg", judul:"Illustrator",),
        new ListBahasa(gambar:"http://idrcorner.com/assets/nn/imgs/flutter.jpg", judul:"Flutter",),

    ],
    ),
   );
  }
}

class ListBahasa extends StatelessWidget{
ListBahasa({this.gambar, this.judul});

final String gambar;
final String judul;

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.all(20.0),
    child: new Center(
      child: new Row  (
        children:<Widget>[
            new Image(
              image: new NetworkImage(gambar),
            width:80.0,),
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Center(
                child: new Column(
                children:<Widget>[
                  new Text(
                    judul,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text("Ini adalah adalah deskripsi bahasa", style: new TextStyle(fontSize:12.0, color:Colors.grey),),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
