import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  final String image;
  final Function()? onPressed;
  final String title;
  final String subtitle;
  final String valor;

  const HomeCardWidget(
      {Key? key,
      this.onPressed,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.valor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            elevation: 1,
            child: ListTile(
              contentPadding: const EdgeInsets.all(18),
              onTap: onPressed,
              leading: Image.asset(image),
              title: Text(title,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500)),
              subtitle: Text(subtitle),
              trailing: Text(valor),
            ),
          ),
        ),
      ],
    );
  }
}
