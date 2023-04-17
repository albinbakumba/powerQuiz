import 'package:flutter/material.dart';
import 'dart:async';


class AnnimationDelait extends StatefulWidget {
  final int delay;
  final double direction;
  final Widget child;
  @override
  const AnnimationDelait({ this.child, this.delay, this.direction});
  _AnnimationDelaitState createState() => _AnnimationDelaitState();
}

class _AnnimationDelaitState extends State<AnnimationDelait> with 
  SingleTickerProviderStateMixin {
    AnimationController _controller;
    Animation<Offset> _animOffset;
  @override

  void initState(){
    super.initState();

    _controller= AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate
      );

      _animOffset=Tween<Offset>(
        begin: Offset(0.0,widget.direction),
        end: Offset.zero 
        ).animate(curve);

        Timer(Duration(milliseconds: widget.delay),(){
          _controller.forward();
        });
    
  }
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
        ),
      );
  }
}