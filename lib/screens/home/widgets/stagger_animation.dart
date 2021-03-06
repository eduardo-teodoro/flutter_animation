import 'package:animation/screens/home/widgets/animated_list_view.dart';
import 'package:animation/screens/home/widgets/fade_container.dart';
import 'package:animation/screens/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({Key? key, required this.controller }):
        containerGrow = CurvedAnimation(
            parent: controller,
            curve: Curves.ease
        ),
        listSlidePosition = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80)
        ).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(
                    0.325,
                    0.8, curve: Curves.ease))),

        super(key: key);
  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;


  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.zero,
          children: [
            HomeTop(
              containerGrow: containerGrow,
            ),
            //lista animada
            AnimatedListView(
              listSlidePosition: listSlidePosition,
            )
          ],
        ),
        IgnorePointer(

        )

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
