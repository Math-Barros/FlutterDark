import 'package:flutter/material.dart';
import 'package:flutter_dark_example/utils/utils_importer.dart';
import 'package:flutter_dark_example/views/about.dart';
import 'package:flutter_dark_example/widgets/custom_theme.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeViewState();
  }
}

class HomeViewState extends State<HomeView> {
  bool isDarkThemeMode = false;

  @override
  void initState() {
    super.initState();
  }

  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 80, right: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  UtilsImporter().stringUtils.home,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                ),
                InkWell(
                  onTap: () {
                    if (isDarkThemeMode == true) {
                      setState(() {
                        isDarkThemeMode = false;
                      });

                      _changeTheme(context, MyThemeKeys.LIGHT);
                    } else {
                      setState(() {
                        isDarkThemeMode = true;
                      });

                      _changeTheme(context, MyThemeKeys.DARK);
                    }
                  },
                  child: Image.asset(
                      isDarkThemeMode == false
                          ? 'assets/sun.png'
                          : 'assets/moon.png',
                      width: 30,
                      height: 30),
                )
              ],
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
              splashColor: Colors.blue, // Splash color over image
              child: Ink.image(
                fit: BoxFit.fill, // Fixes border issues
                width: 400,
                height: 100,
                image: AssetImage(
                  'assets/flutter.png',
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              UtilsImporter().stringUtils.explore,
              style: TextStyle(
                  color: UtilsImporter().colorUtils.greycolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
            SizedBox(height: 30),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    borderSide: new BorderSide(color: Colors.grey, width: 1),
                  )),
            ),
            SizedBox(height: 20),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  borderSide: new BorderSide(color: Colors.grey, width: 1),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              UtilsImporter().stringUtils.email,
              style: TextStyle(
                  color: UtilsImporter().colorUtils.greycolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
            SizedBox(height: 60),
            Text(
              UtilsImporter().stringUtils.user,
              style: TextStyle(
                  color: UtilsImporter().colorUtils.greycolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
