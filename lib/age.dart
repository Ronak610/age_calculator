import 'package:flutter/material.dart';

class agecalcutor extends StatefulWidget {
  const agecalcutor({Key? key}) : super(key: key);

  @override
  State<agecalcutor> createState() => _agecalcutorState();
}

class _agecalcutorState extends State<agecalcutor> {
  TextEditingController txtbyear = TextEditingController();
  TextEditingController txtcyear = TextEditingController();
  String? byear;
  String? cyear;
  int? age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Age Calculator",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Birth Year ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: txtbyear,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("BirthYear"),
                    suffixIcon: Icon(Icons.cake)),
              ),
              Text(
                "Current Year ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: txtcyear,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("CurrentYear"),
                    suffixIcon: Icon(Icons.calendar_month)),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    byear = txtbyear.text;
                    cyear = txtcyear.text;
                    setState(() {
                      age = int.parse(cyear!) - int.parse(byear!);
                    });
                  },
                  child: Text(
                    "Count",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Your Age is : $age",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
