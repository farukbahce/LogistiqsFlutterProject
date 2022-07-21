import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logistiqs/pages/ilanVer.dart';




class PublishPage extends StatefulWidget {
  const PublishPage({Key? key}) : super(key: key);


  @override
  State<PublishPage> createState() => _PublishPageState();
}
class _PublishPageState extends State<PublishPage> {
  int currentTab =0;
  final List<Widget> screens =[IlanPage()];

  List <String> items = ['Adana',
    'Adıyaman',
    'Afyonkarahisar',
    'Ağrı',
    'Amasya',
    'Ankara',
    'Antalya',
    'Artvin',
    'Aydın',
    'Balıkesir',
    'Bilecik',
    'Bingöl',
    'Bitlis',
    'Bolu',
    'Burdur',
    'Bursa',
    'Çanakkale',
    'Çankırı',
    'Çorum',
    'Denizli',
    'Diyarbakır',
    'Edirne',
    'Elazığ',
    'Erzincan',
    'Erzurum',
    'Eskişehir',
    'Gaziantep',
    'Giresun',
    'Gümüşhane',
    'Hakkari',
    'Hatay',
    'Isparta',
    'Mersin',
    'İstanbul',
    'İzmir',
    'Kars',
    'Kastamonu',
    'Kayseri',
    'Kırklareli',
    'Kırşehir',
    'Kocaeli',
    'Konya',
    'Kütahya',
    'Malatya',
    'Manisa',
    'Kahramanmaraş',
    'Mardin',
    'Muğla',
    'Muş',
    'Nevşehir',
    'Niğde',
    'Ordu',
    'Rize',
    'Sakarya',
    'Samsun',
    'Siirt',
    'Sinop',
    'Sivas',
    'Tekirdağ',
    'Tokat',
    'Trabzon',
    'Tunceli',
    'Şanlıurfa',
    'Uşak',
    'Van',
    'Yozgat',
    'Zonguldak',
    'Aksaray',
    'Bayburt',
    'Karaman',
    'Kırıkkale',
    'Batman',
    'Şırnak',
    'Bartın',
    'Ardahan',
    'Iğdır',
    'Yalova',
    'Karabük',
    'Bitlis',
    'Osmaniye',
    'Düzce',
    ];

  String? selectedItem = 'Adana';
  List <String> secenek =['Yük İlanı Paylaş','Vasıta İlanı Paylaş'];
  String? selectedSecenek='Yük İlanı Paylaş';







  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(000000),
            appBar: AppBar(backgroundColor: Colors.black, title:
            Text("İlan Ver, Kazanmaya Başla!",),


            ),

            body: Column(
                children: [
                  Container(
                    height: height * .42,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/logo4.jpeg")
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(16),
                      width: 250,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white, width: 4,),
                      ),
                      child: Column(
                          children: [
                            DropdownButtonHideUnderline(child: DropdownButton(


                                items: [
                                  DropdownMenuItem(
                                    child: Text(
                                      "Yük İlanı Paylaş", style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                    value: "Yük İlanı Paylaş",),
                                  DropdownMenuItem(
                                    child: Text(
                                      "Nakliye İlanı Paylaş", style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                    value: selectedSecenek,
                                  ),
                                ],
                                dropdownColor: Colors.white,
                                hint: Text("İlan Türünü Seçiniz",
                                  style: TextStyle(
                                    color: Colors.grey, fontSize: 20,),),
                                iconSize: 36,
                                icon: Icon(Icons.arrow_drop_down_circle,
                                  color: Colors.lightBlueAccent,),
                                onChanged: (value) => setState(()=> selectedSecenek = secenek as String?))
                            ),
                            DropdownButtonHideUnderline(
                                child: DropdownButton<String>(dropdownColor: Colors.black,
                                  value: selectedItem,
                                  items: items.map((item) =>
                                      DropdownMenuItem<String>(value: item,
                                        child: Text(item,
                                          style: TextStyle(fontSize: 20,color: Colors.grey),),)
                                  )
                                      .toList(),
                                    onChanged: (item) =>
                                      setState(() => selectedItem = item),


                                )
                            ),
                            DropdownButtonHideUnderline(
                                child: DropdownButton<String>(dropdownColor: Colors.black,
                                  value: selectedItem,
                                  items: items.map((item) =>
                                      DropdownMenuItem<String>(value: item,
                                        child: Text(item,
                                          style: TextStyle(fontSize: 20,color: Colors.grey),),)
                                  )
                                      .toList(),
                                  onChanged: (item) =>
                                      setState(() => selectedItem = item),

                                )
                            ),Center(
                            child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IlanPage()));
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
                            child: Text("Devam Et",style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,),

                              ),
                              ),

                            )
                            )
                      )

                ]
            ),
        )
    ]
    )
        )
    );
  }

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
    );
  }
}
