import 'package:flutter/material.dart';
import 'package:videos/common/navigation.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
 }
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    final TextEditingController userController = new TextEditingController();
    final TextEditingController passController = new TextEditingController();

   return new Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            new Hero(
              tag: 'Logo',
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 90.0,
                child: Image.asset("assets/images/veterinarian.png"),
              ),
            ),
            SizedBox(height: 48.0),
            new TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Usuario',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
              ),
              controller: userController,
            ),
            SizedBox(height: 8.0,),
            new TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Contrasena',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                fillColor: const Color(0xFFFFF4)
              ),
              controller: passController,
            ),
            SizedBox(height: 24.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                shadowColor: Colors.lightBlueAccent.shade100,
                elevation: 5.0,
                child: MaterialButton(
                  minWidth: 200.0,
                  height: 42,
                  onPressed: (){
                    NavigationTo.goToHome(context);
                  },
                  color: Colors.lightBlueAccent[700],
                  child: Text(
                    'Iniciar Sesion',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      )
   );
  }
}