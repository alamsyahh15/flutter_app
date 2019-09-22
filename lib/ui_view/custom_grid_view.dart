import 'package:flutter/material.dart';
import 'package:flutter_day3/ui_view/detail_view.dart';
import 'package:giffy_dialog/giffy_dialog.dart';


class CustomGridView extends StatefulWidget {
  CustomGridView({Key key}) : super(key: key);

  _CustomGridViewState createState() => _CustomGridViewState();
}

const List<Key> keys = [
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];

class _CustomGridViewState extends State<CustomGridView> {
  //Deklarasi data list
  List<Container> daftarGunung = new List();
  var itemDaftarGunung = [
    {"nama" : "Gunung1", "gambar" : "merapi.png", "keterangan" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Maecenas volutpat blandit aliquam etiam erat velit scelerisque. At ultrices mi tempus imperdiet. Maecenas ultricies mi eget mauris pharetra. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Mauris rhoncus aenean vel elit scelerisque mauris. Non diam phasellus vestibulum lorem sed. Sed ullamcorper morbi tincidunt ornare massa eget egestas. Pellentesque id nibh tortor id aliquet lectus. Facilisi morbi tempus iaculis urna id volutpat lacus. Hac habitasse platea dictumst vestibulum. Neque volutpat ac tincidunt vitae. Consectetur libero id faucibus nisl tincidunt eget nullam. Faucibus purus in massa tempor nec feugiat nisl pretium fusce. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Pellentesque massa placerat duis ultricies lacus sed. In eu mi bibendum neque egestas congue quisque egestas diam."},
    {"nama" : "Gunung2", "gambar" : "rinjani.png", "keterangan" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Maecenas volutpat blandit aliquam etiam erat velit scelerisque. At ultrices mi tempus imperdiet. Maecenas ultricies mi eget mauris pharetra. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Mauris rhoncus aenean vel elit scelerisque mauris. Non diam phasellus vestibulum lorem sed. Sed ullamcorper morbi tincidunt ornare massa eget egestas. Pellentesque id nibh tortor id aliquet lectus. Facilisi morbi tempus iaculis urna id volutpat lacus. Hac habitasse platea dictumst vestibulum. Neque volutpat ac tincidunt vitae. Consectetur libero id faucibus nisl tincidunt eget nullam. Faucibus purus in massa tempor nec feugiat nisl pretium fusce. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Pellentesque massa placerat duis ultricies lacus sed. In eu mi bibendum neque egestas congue quisque egestas diam."},
    {"nama" : "Gunung3", "gambar" : "salak.png", "keterangan" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Maecenas volutpat blandit aliquam etiam erat velit scelerisque. At ultrices mi tempus imperdiet. Maecenas ultricies mi eget mauris pharetra. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Mauris rhoncus aenean vel elit scelerisque mauris. Non diam phasellus vestibulum lorem sed. Sed ullamcorper morbi tincidunt ornare massa eget egestas. Pellentesque id nibh tortor id aliquet lectus. Facilisi morbi tempus iaculis urna id volutpat lacus. Hac habitasse platea dictumst vestibulum. Neque volutpat ac tincidunt vitae. Consectetur libero id faucibus nisl tincidunt eget nullam. Faucibus purus in massa tempor nec feugiat nisl pretium fusce. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Pellentesque massa placerat duis ultricies lacus sed. In eu mi bibendum neque egestas congue quisque egestas diam."},
    {"nama" : "Gunung4", "gambar" : "semeru.png", "keterangan" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Maecenas volutpat blandit aliquam etiam erat velit scelerisque. At ultrices mi tempus imperdiet. Maecenas ultricies mi eget mauris pharetra. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Mauris rhoncus aenean vel elit scelerisque mauris. Non diam phasellus vestibulum lorem sed. Sed ullamcorper morbi tincidunt ornare massa eget egestas. Pellentesque id nibh tortor id aliquet lectus. Facilisi morbi tempus iaculis urna id volutpat lacus. Hac habitasse platea dictumst vestibulum. Neque volutpat ac tincidunt vitae. Consectetur libero id faucibus nisl tincidunt eget nullam. Faucibus purus in massa tempor nec feugiat nisl pretium fusce. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Pellentesque massa placerat duis ultricies lacus sed. In eu mi bibendum neque egestas congue quisque egestas diam."},
    {"nama" : "Gunung5", "gambar" : "slamet.png", "keterangan" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Maecenas volutpat blandit aliquam etiam erat velit scelerisque. At ultrices mi tempus imperdiet. Maecenas ultricies mi eget mauris pharetra. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Mauris rhoncus aenean vel elit scelerisque mauris. Non diam phasellus vestibulum lorem sed. Sed ullamcorper morbi tincidunt ornare massa eget egestas. Pellentesque id nibh tortor id aliquet lectus. Facilisi morbi tempus iaculis urna id volutpat lacus. Hac habitasse platea dictumst vestibulum. Neque volutpat ac tincidunt vitae. Consectetur libero id faucibus nisl tincidunt eget nullam. Faucibus purus in massa tempor nec feugiat nisl pretium fusce. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Pellentesque massa placerat duis ultricies lacus sed. In eu mi bibendum neque egestas congue quisque egestas diam."},
  ];

  //method
  _buatDataList() async{
    for(var i=0; i<itemDaftarGunung.length; i++){
      final dataGunung= itemDaftarGunung[i];
      
      final String gambarGunung = dataGunung["gambar"];

      daftarGunung.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: new InkWell(
            onTap: (){

              showDialog(
                    context: context,
                    builder: (_) => AssetGiffyDialog(
                      key: keys[5],
                      image: Image.asset(
                        'gambar/$gambarGunung',
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        dataGunung['nama'],
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w600),
                      ),
                      description: Text(
                        dataGunung['keterangan'],
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      onOkButtonPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailView(
                          dnama: dataGunung['nama'], dgambar: dataGunung['gambar'], dketerangan: dataGunung['keterangan'],
                        )));
                      },
                    ));
                    
            },
            child: new Column(
              children: <Widget>[
                new Hero(tag: dataGunung["nama"],
                  child: new Image.asset('gambar/$gambarGunung', height: 85.0,
                  width: 85.0,
                  fit: BoxFit.contain,
                  ),),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Text(dataGunung['nama'], style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState(){
    super.initState();
    _buatDataList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Custom Grid View'),
         backgroundColor: Colors.amber,
       ),
       body: new GridView.count(
         crossAxisCount: 2,
         children: daftarGunung,
       ),
    );
  }
}