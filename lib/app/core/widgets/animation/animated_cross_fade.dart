// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  _AnimatedCrossFadeWidgetState createState() {
    return _AnimatedCrossFadeWidgetState();
  }
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _firstChild = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('CrossFade Animation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(16.0),
            width: double.infinity,
            height: 60,
            color: Colors.orange.shade200,
          ),
          AnimatedCrossFade(
            firstCurve: Curves.easeInCubic,
            secondCurve: Curves.easeInCirc,
            firstChild: InkWell(
              onTap: () {
                setState(() {
                  _firstChild = !_firstChild;
                });
              },
              child: Container(
                alignment: Alignment.center,
                child: ClipOval(
                  child: CircleAvatar(
                    maxRadius: 100,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            secondChild: InkWell(
              onTap: () {
                setState(() {
                  _firstChild = !_firstChild;
                });
              },
              child: Container(
                height: 250,
                width: 250,
                color: Colors.amberAccent.shade700,
                child: Image.asset(
                  'assets/images/event_2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            crossFadeState:
            _firstChild ? CrossFadeState.showFirst :    CrossFadeState.showSecond,
            duration: const Duration(seconds: 2),
            layoutBuilder: (
                Widget topChild,
                Key topChildKey,
                Widget bottomChild,
                Key bottomChildKey,
                ) {
              return Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  PositionedDirectional(
                    key: bottomChildKey,
                    top: 0,
                    child: bottomChild,
                  ),
                  PositionedDirectional(
                    key: topChildKey,
                    child: topChild,
                  ),
                ],
              );
            },
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            width: double.infinity,
            height: 60,
            color: Colors.red.shade200,
          ),
        ],
      ),
    );
  }
}