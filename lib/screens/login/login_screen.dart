
import 'package:animation/screens/home/home_screen.dart';
import 'package:animation/screens/login/widgets/form_container.dart';
import 'package:animation/screens/login/widgets/sign_up_button.dart';
import 'package:animation/screens/login/widgets/stagger_animation.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
   late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      //duaração da animação
      duration: Duration(seconds: 2),
    );
    _animationController.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
      }

    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
        //para que o teclado não fique por cima dos campos
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              //informando que o alinhamento dos componentes é feito na parte de  baixo
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 70, bottom: 32),
                        child: Image.asset("images/tickicon.png",
                            width: 150, height: 150, fit: BoxFit.contain)),
                    FormContainer(),
                    SignUpButton()
                  ],
                ),
                //botão de SignIn
                 StaggerAnimation(
                   controller: _animationController
                 )
              ],
            )
          ],
        ),
      ),
    );
  }
}
