import 'package:flutter/material.dart';
import 'package:flutter_dark_example/utils/utils_importer.dart';
import 'package:flutter_dark_example/views/trivia.dart';

class About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutState();
  }
}

class AboutState extends State<About> {
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
              UtilsImporter().stringUtils.question,
              style: TextStyle(
                  color: UtilsImporter().colorUtils.greycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              UtilsImporter().stringUtils.answer,
              style: TextStyle(
                  color: UtilsImporter().colorUtils.greycolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
            SizedBox(height: 300),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Trivia()),
                        );
                      },
                      child: const Text(
                        'Next Page',
                      ),
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(const BorderSide(
                              width: 2, color: Colors.blueAccent)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blueAccent),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 110)),
                          textStyle: MaterialStateProperty.all(
                              const TextStyle(fontSize: 30)))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
