import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_text_application/screens/homepage.dart';

class TryPage extends StatefulWidget {
  const TryPage({Key? key}) : super(key: key);

  @override
  State<TryPage> createState() => _TryPageState();
}

class _TryPageState extends State<TryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(""),
      // ),
      body: Column(
        //  crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Get Started",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "Enable app permisisions to make sing \n                         up easy"),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 300,
              width: 300,
              child: Image.network(
                  "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Running/Best+Running+Shoe+Brands/best+running+shoe+brand+logos.jpg")),
          SizedBox(
            height: 20,
          ),
          Text("Tap 'Allow' when prompted"),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePages()));
            },
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 1, 32, 134),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
