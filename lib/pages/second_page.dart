import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/third_page.dart';

class SeconPage extends StatelessWidget {
  const SeconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30.0,),
          Image.asset("assets/images/secondpagebg.png"),
          SizedBox(height: 30.0,),
          const Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blueGrey),),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0 , right: 10.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: "Username", labelText: "Email/Username" ,focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 3.0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 3.0),
              ),),
            ),
          ),
          const SizedBox(height: 3.0,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(hintText: "Password", labelText: "Password" ,focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 3.0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 3.0),
              ),),
            ),
          ),
          SizedBox(height: 14.0,),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdPage()));
            },
            icon: const Icon(
              Icons.navigate_next,
              color: Colors.blueGrey,
            ),
            label: const Text(
              'Login',
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
