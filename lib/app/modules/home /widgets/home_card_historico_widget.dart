import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';

class HomeCardHistorico extends StatelessWidget {
  const HomeCardHistorico({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             ListTile(
              title: Container(
                padding: const EdgeInsets.fromLTRB(0,10,5,10),
                child: const Text('Histórico',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: green,
                  ),
                ),
              ),
              subtitle: const Wrap(
                children: [
                  Text("Lorem ipsum arcu conubia habitant quisque ligula ullamcorper aliquet tempus placerat, congue ultrices netus vel commodo elementum senectus conubia ultrices, amet erat aenean risus curabitur sit scelerisque nullam litora. "),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  TextButton(
                    child: const Text('LISTEN'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
