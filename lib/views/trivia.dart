import 'package:flutter/material.dart';
import 'package:flutter_dark_example/utils/utils_importer.dart';

class Trivia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TriviaState();
  }
}

class TriviaState extends State<Trivia> {
  bool isDarkThemeMode = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        actions: <Widget>[],
      ),
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              UtilsImporter().stringUtils.question2,
              style: TextStyle(
                  color: UtilsImporter().colorUtils.greycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              UtilsImporter().stringUtils.answer2,
              style: TextStyle(
                  color: UtilsImporter().colorUtils.greycolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(200), // Image radius
                child: Image.network(
                    'https://pt.solar-energia.net/uploads/cms/sistema-solar/distancia-do-sol-a-terra.webp?ezimgfmt=rs:350x175/rscb1/ng:webp/ngcb1',
                    fit: BoxFit.cover),
              ),
            )
          ],
        ),
      ),
    );
  }
}
