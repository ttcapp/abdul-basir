import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String btnText =' Button 1';
bool btnPress = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('My First App Abdul Basir'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your nameeee'
                  ),
                ),
              ),
              RaisedButton(
                child: Text(btnText),
                onPressed: (){
                  setState(() {
                    btnText = btnPress ? 'Button Pressed' : "Button 1";
                    btnPress = !btnPress;
                  });
                },
              ),
              Container(
                height: 200,
                width: 350,
                child: Image.network("https://i.imgur.com/fHyEMsl.jpg"),
              ),
              Container(
                height: 200,
                width: 350,
                child: Image.asset("assets/images/flower.jpg"),
              ),
            ],
     ),
        ),
      ),
     );
  }
}






