import 'package:animation/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';
class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;


  AnimatedListView({Key? key, required this.listSlidePosition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter ,
      children: [
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do Daniel Ciofi",
          image: AssetImage("images/perfil.jpeg"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com o curso do Daniel Ciofi",
          image: AssetImage("images/perfil.jpeg"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do Daniel Ciofi",
          image: AssetImage("images/perfil.jpeg"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com o curso do Daniel Ciofi",
          image: AssetImage("images/perfil.jpeg"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
