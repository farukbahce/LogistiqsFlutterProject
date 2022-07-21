import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logistiqs/login_page.dart';

class ProfilePage extends StatelessWidget {
  int currentTab =0;
  final List<Widget> screens =[
    LoginPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(

            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "add you image URL here "
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    alignment: Alignment(0.0,2.5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "Add you profile DP image URL here "
                      ),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 100,
              ),
              Text(
                "Muhammed Faruk Bahçe"
                ,style: TextStyle(
                  fontSize: 25.0,
                  color:Colors.white,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Türkiye,Eskişehir"
                ,style: TextStyle(
                  fontSize: 18.0,
                  color:Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Logistiqa Şirket Çalışanı"
                ,style: TextStyle(
                  fontSize: 15.0,
                  color:Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 10,
              ),





                          ],
                        ),

                      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));

        },
          label: Center(child: Text("Çıkış")),),





                );








  }
}