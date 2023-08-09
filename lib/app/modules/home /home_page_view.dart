import 'package:flutter/material.dart';
import 'package:setsistemas/app/modules/home%20/home_page_body.dart';


class HomePageViewWidget extends StatelessWidget {
  const HomePageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/back_login.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: const HomePageBody(),
    );
  }
}
