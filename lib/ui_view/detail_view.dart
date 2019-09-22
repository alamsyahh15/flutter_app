import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
 
 String dnama, dgambar, dketerangan;
 DetailView({this.dnama, this.dgambar, this.dketerangan});

  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail View"),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 240,
            child: new Hero(
              tag: widget.dnama,
              child: new Material(
                child: InkWell(
                  child: Image.asset('gambar/${widget.dgambar}', fit: BoxFit.contain,),
                ),
              ),
            ),
          ),

          //New Class / Class Baru
          new BagianNama(
            nama : widget.dnama
            ),
          new BagianIcon(),
          new BagianKeterangan(
            keterangan : widget.dketerangan
          ),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(nama, style: TextStyle(fontSize: 20.0, color: Colors.green),),
                Text("$nama\@gmail.com", style: TextStyle(fontSize: 17.0, color: Colors.green),)
              ],
            ),
          ),

          Row(
            children: <Widget>[
              Icon(Icons.star,size: 40.0,color: Colors.red,),
              Text("12", style : TextStyle(fontSize: 18.0)),
            ],
          )
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          IconTeks(iconData : Icons.camera, teks : "Camera"),
          IconTeks(iconData : Icons.message, teks : "Pesan"),
          IconTeks(iconData : Icons.phone, teks : "Phone"),
        ],
      ),
    );
  }
}

class IconTeks extends StatelessWidget {
  IconTeks({this.iconData, this.teks});
  final IconData iconData;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(iconData, size: 20.0, color: Colors.green,),
          Text(teks, style: TextStyle(fontSize: 12.0, color: Colors.green),),
        ],
      ),
    );
  }
}


class BagianKeterangan extends StatelessWidget {
  String keterangan;
  BagianKeterangan({this.keterangan});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            '$keterangan', style: TextStyle(fontSize: 14.0),textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}