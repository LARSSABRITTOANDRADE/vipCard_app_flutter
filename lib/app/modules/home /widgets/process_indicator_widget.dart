

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class AnimatedIconButton extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;
  String sdata = '';

  late AnimationController progressController;
  late Animation<double> animation;

  late AnimationController _icoNotiController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    progressController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));

    animation = Tween<double>(begin: 0, end: 0.4)
        .animate(progressController) //end0.3 = metade
      ..addListener(() {
        setState(() {});
      });

    _icoNotiController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    progressController.forward();
    Future.delayed(Duration(seconds: 6), () async {
      await _icoNotiController.forward();
      await _icoNotiController.reverse();
      await _icoNotiController.forward();
      await _icoNotiController.reverse();
      await _icoNotiController.forward();
      await _icoNotiController.reverse();
    });
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AnimationController>('_icoNotiController', _icoNotiController));
  }


  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

