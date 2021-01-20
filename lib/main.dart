import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    final Color colorPrimary = Colors.deepOrange[800];
    final Color colorPrimaryDark = Colors.red[900];
    final Color colorText =  Colors.white;
    final Color colorTextSecondary = Colors.grey[400];

    return Scaffold(
      backgroundColor: colorPrimaryDark,
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        backgroundColor: colorPrimary,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja_avatar.jpg'),
                radius: 70.0,
              ),
            ),
            Divider(height: 60, color: colorTextSecondary,),
            Text(
                "NAME",
              style: TextStyle(
                color: colorTextSecondary,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Kenneth Murerwa",
              style: TextStyle(
                color: colorText,
                fontSize: 22.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                color: colorTextSecondary,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: colorText,
                fontSize: 22.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget> [
                Icon(
                  Icons.email,
                  color: colorTextSecondary,
                ),
                SizedBox(width: 10.0),
                Text(
                  "xwaxes@gmail.com",
                  style: TextStyle(
                    color: colorText,
                    fontSize: 20.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Center(
              child: FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      ninjaLevel ++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: colorPrimaryDark,
                  ),
                  color: colorText,
                  label: Text(
                    "Add Ninja Level",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: colorPrimaryDark,
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

