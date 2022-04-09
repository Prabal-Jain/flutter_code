import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30.0,),
          Image.asset("assets/images/thirdpagebg.png"),
          SizedBox(height: 50.0,),
          Center(child: Text("Under Maintenance!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.blueGrey),))
        ],
      ),
     
    );
  }
}
