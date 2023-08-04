import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/appbar/appbar_home.widget.dart';
import 'package:setsistemas/app/modules/home%20/widgets/home_card_historico_widget.dart';
import 'package:setsistemas/app/modules/home%20/widgets/home_carrosel_card_widgets.dart';
import 'package:setsistemas/app/modules/home%20/widgets/home_menu_itens_widget.dart';
import 'package:setsistemas/app/modules/home%20/widgets/home_economizometro_widget.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: _appbar(),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              EconomizometroPageWidget(),
              HomeMenuItensWidget(),
              Divider(thickness: 1.2),
              SizedBox(height: 20),
              CarroselCardWidget(),
              SizedBox(height: 10),
              HomeCardHistorico(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appbar() {
    return const PreferredSize(
        preferredSize: Size.fromHeight(170),
      child: AppHomeWidget(),
    );
  }
}
