import 'package:flutter/material.dart';
import 'package:mercado_ipn/screens/auth/register.dart';
import 'package:mercado_ipn/screens/auth/singin.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSingIn = true;
  void toggleView(){
    setState(() => showSingIn = !showSingIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSingIn == true){
      return SingIn(toggleView: toggleView);
    }else{
      return Register(toggleView: toggleView);
    }
  }
}