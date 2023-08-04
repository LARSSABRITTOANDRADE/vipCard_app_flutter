import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';

class EconomizometroPageWidget extends StatefulWidget {
  const EconomizometroPageWidget({super.key});

  @override
  State<EconomizometroPageWidget> createState() =>
      _EconomizometroPageWidgetState();
}

class _EconomizometroPageWidgetState extends State<EconomizometroPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Economizômetro",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: green,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.chevronRight),
                color: green,
              ),
            ],
          ),
          const Text(
            "R\$ 156,00",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textBlack,
            ),
          ),
        ],
      ),
    );
  }
}
