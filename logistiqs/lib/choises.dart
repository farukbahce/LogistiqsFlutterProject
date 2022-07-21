import 'package:flutter/material.dart';
import 'package:logistiqs/pages/yukSayfas%C4%B1.dart';
import 'pages/messages.dart';
import 'pages/profile.dart';
import 'pages/publish.dart';
import 'pages/search.dart';
import 'pages/yourServices.dart';
import 'pages/yukSayfası.dart';
import 'pages/vasıtaSayfası.dart';

    class ChoisePage extends StatelessWidget {
       ChoisePage({Key? key}) : super(key: key);

      int currentTab =0;
      final List<Widget> screens =[
        SearchPage(),
        PublishPage(),
        YourServices(),
        MessagesPage(),
        ProfilePage(),
        YukSayfasi(),
        VasitaSayfasi()

      ];



      @override
      Widget build(BuildContext context) {
        var height = MediaQuery.of(context).size.height;
        return Scaffold(
          backgroundColor: Color(000000),
          
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: height *.55 ,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/logo.jpeg")
                  ),
            ),
                ),
                Text("Logistiqa Ailesine Hoşgeldiniz!",style: TextStyle(fontSize: 30,color: Colors.grey,fontWeight: FontWeight.bold),),
            customSizedBox(),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>YukSayfasi()));
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.lightBlueAccent,


                      ),
                        child:
                        Center(

                          child: Text("Yük Ara",
                              style: TextStyle(color: Colors.white)
                      ),
                        ),

                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VasitaSayfasi()));
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.lightBlueAccent,
                        ),
                        child: Center(
                          child: Text("Vasıta Ara",style: TextStyle(color: Colors.white ),
                        ),
                      ),
                    ),
                  )
                  ),
                ],
              ),
              ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            child: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(
                  builder: (context)=> ChoisePage(),
              ),
              );

            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(minWidth: 40,onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(
                            builder:(context)=> PublishPage(),
                        ),
                        );

                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_box,
                              size: 30,
                              color: currentTab == 0 ? Colors.lightBlueAccent: Colors.grey,
                            ),
                            Text(
                                'Yayınla',
                              style: TextStyle(
                                color: currentTab == 0 ? Colors.lightBlueAccent : Colors.grey,

                              ),
                            ),

                          ],
                        ),
                      ),
                      MaterialButton(minWidth: 40,onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder:(context)=> YourServices(),
                          ),
                        );

                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.airport_shuttle_sharp,
                              size: 30,
                              color: currentTab == 0 ? Colors.lightBlueAccent: Colors.grey,
                            ),
                            Text(
                              'İlanların',
                              style: TextStyle(
                                color: currentTab == 0 ? Colors.lightBlueAccent : Colors.grey,

                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                  //Right Tab Bar Icons
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(minWidth: 40,onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder:(context)=> MessagesPage(),
                          ),
                        );

                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.message,
                              size: 30,
                              color: currentTab == 0 ? Colors.lightBlueAccent: Colors.grey,
                            ),
                            Text(
                              'Gelen Kutusu',
                              style: TextStyle(
                                color: currentTab == 0 ? Colors.lightBlueAccent : Colors.grey,

                              ),
                            ),

                          ],
                        ),
                      ),
                      MaterialButton(minWidth: 40,onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder:(context)=> ProfilePage(),
                          ),
                        );

                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                              size: 30,
                              color: currentTab == 0 ? Colors.lightBlueAccent: Colors.grey,
                            ),
                            Text(
                              'Profil',
                              style: TextStyle(
                                color: currentTab == 0 ? Colors.lightBlueAccent : Colors.grey,

                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),



        );
      }
      Widget customSizedBox() => SizedBox(
        height: 20,
      );
    }
    