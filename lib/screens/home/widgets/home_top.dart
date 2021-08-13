import 'package:animation/screens/home/widgets/category_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  HomeTop({Key? key, required this.containerGrow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //tamanho da tela
    final screenSize = MediaQuery.of(context).size;
    return Container(
      //haverá um retangulo na parte superior ocupando 30% da tela
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
      ),
      //para que seja ignorado o topo da tela

      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Bem-vindo, Eduardo!",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("images/perfil.jpeg"),
                      //para que a imagem cubra o circulo
                      fit: BoxFit.cover)),
              child: Container(
                width: containerGrow.value * 35,
                height: containerGrow.value * 35,
                margin: EdgeInsets.only(left: 80),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: containerGrow.value * 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                //bolinha azul
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(80, 210, 194, 1.0)),
              ),
            ),
            CategoryView(),
          ],
        ),
      ),
    );
  }
}
