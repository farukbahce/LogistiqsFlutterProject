import 'package:flutter/material.dart';
import 'package:logistiqs/choises.dart';

class IlanPage extends StatefulWidget {
  const IlanPage({Key? key}) : super(key: key);


  @override
  State<IlanPage> createState() => _IlanPage();
}
class _IlanPage extends State<IlanPage> {
  final List<Widget> screens =[ChoisePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İlan Ver,Kazanmaya Başla!",),
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
                  child: Text("Yapılan Altyapı Çalışmalarından Dolayı Şu An Hizmet Verememekteyiz...",
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
        child: Icon(Icons.add_road_outlined),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChoisePage()));


        } ,

      ),
    );
  }
  Widget customSizedBox() => SizedBox(
    height: 20,);
}