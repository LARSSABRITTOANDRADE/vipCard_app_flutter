import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';

class HomeMenuItensWidget extends StatelessWidget {
  const HomeMenuItensWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _itemMenu(
              icon: Icons.person,
              name: "Dependentes",
              isFisrt: true,
              onPressed:() => Modular.to.pushNamed("/home/dependentes/"),
            ),
            _itemMenu(
              icon: MdiIcons.car,
              name: " Veículos ",
              onPressed:() => Modular.to.pushNamed("/home/veiculos/"),
            ),
            _itemMenu(
              icon: Icons.attach_money,
              name: "Financeiro",
              onPressed:() => Modular.to.pushNamed("/home/financeiro/"),
            ),
            _itemMenu(
              icon: Icons.business_center_outlined,
              name: "Conveniados",
              onPressed:() => Modular.to.pushNamed("/home/conveniados/"),
            ),
            _itemMenu(
              icon: MdiIcons.creditCard,
              name: " Planos ",
              onPressed:() => Modular.to.pushNamed("/home/planos/"),
            ),
          ],
        ),
      ),
    );
  }
  _itemMenu({required IconData icon, required String name ,bool ? isFisrt, required  Function() onPressed}){
    return Container(
      padding: (isFisrt ?? false )? const EdgeInsets.only(right: 7,left: 10)
          : const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(40),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
              icon,
              color: green,
            ),
            ),
          ),
          Text(name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
              color: textBlack
            ),
          ),
        ],
      ),
    );
  }
}