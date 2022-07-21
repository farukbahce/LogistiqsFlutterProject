import 'package:flutter/material.dart';
import 'package:logistiqs/pages/publish.dart';

class YukSayfasi extends StatefulWidget {
   YukSayfasi({Key? key}) : super(key: key);
  int currentTab =0;
  final List<Widget> screens =[
  PublishPage(),
  ];

  @override
  State<YukSayfasi> createState() => _YukSayfasi();
}

class _YukSayfasi extends State<YukSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yük İlanları"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customSizedBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text("Aktif Yük İlanı Bulunmamaktadır",
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
        child: Icon(Icons.add_business),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PublishPage()));

        } ,

      ),
    );
  }
  Widget customSizedBox() => SizedBox(
    height: 20,);
}
