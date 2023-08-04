import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';
import 'package:setsistemas/app/core/ui/widgets/avatar/avatar_icon.widget.dart';

class AppHomeWidget extends StatelessWidget {
  final String title;
  const AppHomeWidget({super.key,this.title = "",});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.fromLTRB(10,40,10,20),
        decoration:  const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(60),
          ),
          gradient:  LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [green, primary]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AvatarWidget(),
                const SizedBox(width: 20),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none,
                        color: white,
                      ),
                    ),
                    IconButton(
                      onPressed: () => Modular.to.pushNamed('/auth/'),
                      icon: const Icon(
                        Icons.logout_outlined,
                        color: white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              child: const Text(
                "Olá,Agente \n",
                style:
                TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
