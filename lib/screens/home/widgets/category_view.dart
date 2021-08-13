import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  final List<String> categories = [
    "Trabalho",
    "Estudos",
    "Casa"
  ];
  int _category = 0;

  void selectForwad(){
    setState(() {
      _category++;
    });

  }
  void selectBackward(){
    setState(() {
      _category--;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      //expandindo na horizontal
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        IconButton(
          onPressed:_category > 0 ? selectBackward : null,
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
            color: Colors.white
          ) ,

        ),
        IconButton(
          onPressed: _category< categories.length -1? selectForwad: null,
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
        )
      ],
    );
  }
}
