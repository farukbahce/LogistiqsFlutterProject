
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logistiqs/choises.dart';
import 'package:logistiqs/pages/auth_service.dart';
import 'package:logistiqs/pages/register.dart';
import 'package:logistiqs/pages/sifremiUnuttum.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController =TextEditingController();
  final TextEditingController _passwordController =TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(000000),
      body: SingleChildScrollView(
      child:Center(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Container(
              height: height * .55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/logo.jpeg"),
                )
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("En Hızlı,En Ucuz!", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,),
                  ),
                  customSizedBox(),
                  TextField(

                    controller: _emailController,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white,),
                    obscureText: false,
                    decoration: customInputDecoration("Email",),

             ),
                  customSizedBox(),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    controller: _passwordController,
                    obscureText: true,
                    decoration: customInputDecoration("Şifre"),
                  ),
                  customSizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                      },
                      child: Text("Kayıt ol",style: TextStyle(color: Colors.pink[200]),),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SifremiUnuttum()));
                      },

                      child: Text("Şifremi Unuttum",style: TextStyle(color: Colors.pink[200]),),

                    ),
                  ],
                    ),

                  customSizedBox(),
                   InkWell(
                     onTap: (){
                       _authService.signIn(_emailController.text, _passwordController.text).then((value) {
                         return Navigator.push(context, MaterialPageRoute(builder: (context) => ChoisePage()));
                       },);
                     },
                      child:Container(
                      height: 50,
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff3174F)),
                      child:Center(
                        child:Text(
                        "Giriş Yap",
                        style: TextStyle(color: Colors.lightBlueAccent),

                      ),
                      ),
                      ),
                    ),
              ],
                  ),
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
