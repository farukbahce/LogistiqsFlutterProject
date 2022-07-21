import 'package:flutter/material.dart';
import 'package:logistiqs/login_page.dart';


class SifremiUnuttum extends StatefulWidget {
  SifremiUnuttum({Key? key}) : super(key: key);
  int currentTab =0;
  final List<Widget> screens =[
    LoginPage(),
  ];

  @override
  State<SifremiUnuttum> createState() => _SifremiUnuttum();
}

class _SifremiUnuttum extends State<SifremiUnuttum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şifremi Unuttum"),
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
                child: Text("Şifre Sıfırlama Bağlantınız Mail Adresinize Gönderilmiştir...",
                  style: TextStyle(
                    fontSize: 20,
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
        child: Icon(Icons.login),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));

        } ,

      ),
    );
  }
  Widget customSizedBox() => SizedBox(
    height: 20,);
}