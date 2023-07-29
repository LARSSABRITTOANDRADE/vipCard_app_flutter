import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';
import 'package:setsistemas/app/modules/home%20/menu/menu_page_body.dart';

class MenuPageViewWidget extends StatelessWidget {
  const MenuPageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(150, 25),
          ),
        ),
        title: const Text(
          "Meus Dados",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: MenuPageBodyWidget(),
    );
  }
}
