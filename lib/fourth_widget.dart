import 'package:flutter/material.dart';
import 'package:fluttersmarthome/r.dart';

class FourthWidget extends StatelessWidget {
  const FourthWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 24.0, left: 32.0, right: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  R.assetsImgIconConfigure,
                  scale: 1.2,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Configure",
              style: TextStyle(
                fontSize: 22.0,
                color: Color(0xFF4C4C5F),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "new room",
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
