import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final EdgeInsets margin;

  ListData({Key? key, required this.title, required this.subtitle, required this.image, required this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        //cor de fundo do retangulo
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey, width: 1.0),
          bottom: BorderSide(color: Colors.grey, width: 1.0),
        )
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: image)
            ),
          ),
          Column(
            //alinhar textos na esquerda
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 5,),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300
                ),
              )


            ],
          )

        ],

      ),
    );
  }
}

    