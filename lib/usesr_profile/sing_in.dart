import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sing_in extends StatefulWidget {
  const Sing_in({Key? key}) : super(key: key);

  @override
  State<Sing_in> createState() => _Sing_inState();
}

class _Sing_inState extends State<Sing_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sing In"),
      ),
    );
  }
}
