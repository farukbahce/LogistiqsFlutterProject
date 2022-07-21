import 'package:flutter/material.dart';
import 'package:logistiqs/pages/publish.dart';
import 'package:logistiqs/pages/register.dart';


class YourServices extends StatefulWidget {
   YourServices({Key? key}) : super(key: key);
  int currentTab =0;
  final List<Widget> screens =[
    PublishPage(),
  ];


  @override
  State<YourServices> createState() => _YourServicesState();
}

class _YourServicesState extends State<YourServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yolculuklarınız"),
        backgroundColor: Colors.lightBlueAccent,


      ),


      body:
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           customSizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text("Aktif İlanınız Bulunmamaktadır",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  ),
                ),

              ),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_road),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => PublishPage()),
          );
        } ,

      ),
    );

  }
  Widget customSizedBox() => SizedBox(
    height: 20,
  );
}
