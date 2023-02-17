import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drawer_Ui extends StatefulWidget {
  const Drawer_Ui({Key? key}) : super(key: key);

  @override
  State<Drawer_Ui> createState() => _Drawer_UiState();
}

class _Drawer_UiState extends State<Drawer_Ui> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //   backgroundColor: Colors.red,
      child: ListView(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-psd/shoes-sale-social-media-post-square-banner-template-design_505751-3122.jpg?w=740&t=st=1676537770~exp=1676538370~hmac=49a2a789896216723e21e803d22b76bb6556fc39847bd8cdac6483646adce7d6"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue),
          ),
          ListTile(
            title: Text("Nike"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("Adidas"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("Jordon"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("Puma"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("Reedbock"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("Sparx"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("Campus"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text("Help"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("About"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("Rate App"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("Repot"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text("Log Out"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
