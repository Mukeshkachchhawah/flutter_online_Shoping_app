import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shoping extends StatefulWidget {
  const Shoping({
    Key? key,
  }) : super(key: key);
  // final String title;

  @override
  State<Shoping> createState() => _ShopingState();
}

class _ShopingState extends State<Shoping> {
  final photos = <File>[];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Shoping"),
        backgroundColor: Color.fromARGB(255, 1, 8, 14),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Shoping Card",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            items(),
            items1(),
            items2(),
            SizedBox(
              height: 30,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "\$ 3000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Charj",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "\$ Free On Delivery",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub Total",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.red),
                ),
                Text(
                  "\$ 3000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.red),
                )
              ],
            ),
            Spacer(),
            MaterialButton(
              color: Color.fromARGB(255, 8, 31, 50),
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Center(
                child: Text(
                  "PROCEED BY NOW",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget items2() {
    return Container(
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/premium-photo/high-quality-casual-mens-shoe-white-isolated-back-ground_722820-757.jpg?w=826"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                // Container(
                //   width: 100.0,
                //   child: Text(
                //     "Nike Air Max Tailwind IV Sp ",
                //     style: TextStyle(fontWeight: FontWeight.bold),
                //   ),
                // ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100.0,
                      child: Text(
                        "Nike Air Max Tailwind IV Sp ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.add,
                          color: Colors.red,
                          size: 20,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: 20,
                        )),
                    Spacer(),
                    Text(
                      "\$. 2200",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget items1() {
    return Container(
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-photo/background-red-retro-model-tennis_1203-3993.jpg?w=826&t=st=1676537468~exp=1676538068~hmac=1ae60bd13a6f93c56e722aa665913db1c4b0c651d9f1714e7f7e770c914fea19"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                // Container(
                //   width: 100.0,
                //   child: Text(
                //     "Nike Air Max Tailwind IV Sp ",
                //     style: TextStyle(fontWeight: FontWeight.bold),
                //   ),
                // ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100.0,
                      child: Text(
                        "Nike Air Max Tailwind IV Sp ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.add,
                          color: Colors.red,
                          size: 20,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: 20,
                        )),
                    Spacer(),
                    Text(
                      "\$. 900",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget items() {
    return Container(
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-photo/pair-trainers_144627-3800.jpg?w=740&t=st=1676534117~exp=1676534717~hmac=3b7a9b77e89ab4867bd481f024d6148c535acfffcb01b99ad733809f4d74622d"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                // Container(
                //   width: 100.0,
                //   child: Text(
                //     "Nike Air Max Tailwind IV Sp ",
                //     style: TextStyle(fontWeight: FontWeight.bold),
                //   ),
                // ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100.0,
                      child: Text(
                        "Nike Air Max Tailwind IV Sp ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.add,
                          color: Colors.red,
                          size: 20,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: 20,
                        )),
                    Spacer(),
                    Text(
                      "\$. 1000",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
