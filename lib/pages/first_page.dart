import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/firstpagebg.png"),
          Text(
            "Welcome",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.blueGrey),
          ),
          SizedBox(
            height: 4,
          ),
          Center(
              child: Text(
            "India's Largest Online Learning Platform ",
            style: TextStyle(fontSize: 20, color: Colors.blueGrey),
          )),
          SizedBox(
            height: 120,
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SeconPage()));
            },
            icon: const Icon(
              Icons.navigate_next,
              color: Colors.blueGrey,
            ),
            label: const Text(
              'Next',
              style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent,
                fixedSize: Size(120, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
          )
        ],
      ),
    );
  }
}
