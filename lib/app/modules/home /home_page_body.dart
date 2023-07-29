import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';
import 'package:setsistemas/app/modules/auth/sign-in/widgets/elevatedbutton_widget.dart';
import 'package:setsistemas/app/modules/home%20/widgets/home_card_widget.dart';

class HomepageBodyWidget extends StatelessWidget {
  const HomepageBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: green,
        onPressed: () {},
        child: const Icon(
          Icons.contact_mail_rounded,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: green,
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Sair',
          ),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              alignment: const Alignment(0.0, 0.0),
              width: MediaQuery.of(context).size.width,
              height: 230,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [green, primary])),
            ),
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width / 2) - 90,
            top: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180,
                  height: 70,
                  child: Image.asset("assets/logo_client.png"),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 30,
            child: IconButton(
              iconSize: 30,
              onPressed: () => Modular.to.pushNamed('/home/menu/'),
              icon: const Icon(Icons.menu),
              color: white,
            ),
          ),
          //Positioned do avatar
          Positioned(
            left: MediaQuery.of(context).size.width * 0.15,
            top: 100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(3, 3),
                    blurRadius: 5,
                  )
                ],
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 195,
              child: Center(
                child: Column(
                  children: [
                    CustomPaint(
                      child: SizedBox(
                        width: 180,
                        height: 180,
                        child: Column(
                          children: [
                            Container(height: 12),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.asset("assets/client.jpg"),
                            ),
                            const Text(
                              "Nome cliente",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'RobotoMedium',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  topRight: Radius.circular(13),
                                  bottomRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                ),
                                color: green,
                              ),
                              width: 100,
                              height: 15,
                              child: const Text(
                                'Já economizei',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'RobotoMedium',
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text('R\$ 135',
                                              style: TextStyle(
                                                fontFamily: 'Orbitron',
                                                color: Colors.black54,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            ',00',
                                            style: TextStyle(
                                              fontFamily: 'Orbitron',
                                              color: Colors.black54,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Expanded(
                                child: ElevatedButtonWidget(
                                    label: "Economizômetro")),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.04,
            top: 308,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(1, 1),
                    blurRadius: 1.5,
                  ),
                ],
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width * 0.92,
              height: 95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/ico_panfleto.png",
                        width: 60,
                      ),
                    ),
                  ),
                  Material(
                    // needed
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/ico_comochega.png",
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/ico_indique.png",
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Image.asset(
                        "assets/ico_chat.png",
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.04,
            top: 410,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(1, 1),
                    blurRadius: 1.5,
                  )
                ],
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width * 0.92,
              height: 155,
              child: const HomeCardWidget(
                title: "EXEMPLO SERVIÇO",
                subtitle: "Clínca",
                image: "assets/gift.png",
                valor: "R\$ 200",
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.04,
            top: 410,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.92,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: green,
              ),
              child: const Text(
                '  Histórico',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'RobotoMedium',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
