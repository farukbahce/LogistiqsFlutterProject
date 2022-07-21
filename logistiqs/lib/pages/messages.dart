import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gelen Kutusu"),
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
                child: Text("Mesajınız Bulunmamaktadır",
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
          child: Icon(Icons.add_comment_sharp),
          backgroundColor: Colors.lightBlueAccent,
          onPressed: (){

          } ,

        ),
    );
  }
  Widget customSizedBox() => SizedBox(
  height: 20,);
}
