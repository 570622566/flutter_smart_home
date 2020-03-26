import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersmarthome/r.dart';

class SecWidget extends StatelessWidget {
  const SecWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 24.0, left: 32.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  R.assetsImgIconSofa,
                  scale: 1.2,
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Transform.scale(
                  scale: 0.76,
                  child: CupertinoSwitch(
                    value: true,
                    activeColor: Color(0x55FFFFFF),
                    trackColor: Colors.white,
                    onChanged: (bool) {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Living room",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "open",
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xFFC7C5CC),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
