import 'package:autocomplete_textfield_ns/autocomplete_textfield_ns.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> added = [];
  String currentText = "";
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();

  _FirstPageState() {
    textField = SimpleAutoCompleteTextField(
      decoration: InputDecoration(
          hintText: "Search",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
      key: key,
      controller: TextEditingController(),
      suggestions: seacrh_List,
      textChanged: (text) => currentText = text,
      clearOnSubmit: false,
      textSubmitted: (text) => setState(() {
        if (text != "") {
          added.add(text);
        }
      }),
    );
  }

  List<String> seacrh_List = [
    "Apple",
    "Armidillo",
    "Actual",
    "Actuary",
    "America",
    "Argentina",
    "Australia",
    "Antarctica",
    "Blueberry",
    "Cheese",
    "Danish",
    "Eclair",
    "Fudge",
    "Granola",
    "Hazelnut",
    "Ice Cream",
    "Jely",
    "Kiwi Fruit",
    "Lamb",
    "Macadamia",
    "Nachos",
    "Oatmeal",
    "Palm Oil",
    "Quail",
    "Rabbit",
    "Salad",
    "T-Bone Steak",
    "Urid Dal",
    "Vanilla",
    "Waffles",
    "Yam",
    "Zest"
  ];

  late SimpleAutoCompleteTextField textField;
  bool showWhichErrorText = false;

  @override
  Widget build(BuildContext context) {
    Column body = Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 38),
        child: ListTile(
          title: textField,
          // trailing: IconButton(
          //     icon: Icon(
          //       Icons.add,
          //       color: Colors.black,
          //     ),
          //     onPressed: () {
          //       textField.triggerSubmitted();
          //       showWhichErrorText = !showWhichErrorText;
          //       textField.updateDecoration();
          //     }),
        ),
      ),
    ]);

    body.children.addAll(added.map((item) {
      return ListTile(
          title: Text(item),
          trailing: IconButton(
              onPressed: () {
                ;
                setState(() {
                  seacrh_List.removeAt(0);
                });
              },
              icon: Icon(Icons.remove)));
    }));

    return Scaffold(
      body: SingleChildScrollView(child: body),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //   },
      //   backgroundColor: Colors.red,
      //   child: IconButton(
      //       icon: Icon(Icons.edit),
      //       onPressed: () => showDialog(
      //           builder: (_) {
      //             String text = "";

      //             return AlertDialog(
      //                 title: Text("Add New Name"),
      //                 content: TextField(onChanged: (_text) => text = _text),
      //                 actions: [
      //                   TextButton(
      //                       onPressed: () {
      //                         if (text != "") {
      //                           seacrh_List.add(text);
      //                           textField.updateSuggestions(seacrh_List);
      //                         }
      //                         Navigator.pop(context);
      //                       },
      //                       child: Text("Add")),
      //                 ]);
      //           },
      //           context: context)),
      // ),
    );
  }
}
