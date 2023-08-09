import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

class BottonBarWidget extends StatefulWidget {
  const BottonBarWidget({super.key});

  @override
  State<BottonBarWidget> createState() => _BottonBarWidgetState();
}

class _BottonBarWidgetState extends State<BottonBarWidget> {
  ScrollController scrollBottomBarController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

      ],
    );
  }
}
