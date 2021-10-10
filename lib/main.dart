
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

String btnText1 =' Button 1';
String btnText2 =' Button 2';
Color btnColor1 = Colors.purpleAccent;
bool imgVisible1 = false;
bool imgVisible2 = false;


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Abdul Basir'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                child: Text(btnText1),
                color: btnColor1,
                onPressed: (){
                  setState(() {
                    btnText1 = 'Button Pressed';
                    btnColor1 = Colors.deepPurpleAccent;
                    imgVisible1 = true;
                  });
                },
              ),
              Visibility(
                visible: imgVisible1,
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(color: Colors.purple[300]),
                  child: Image.network("https://i.imgur.com/fHyEMsl.jpg"),
                ),
              ),
              RaisedButton(
                child: Text(btnText2),
                color: btnColor1,
                onPressed: (){
                  setState(() {
                    btnText2 = 'Button Pressed';
                    btnColor1 = Colors.deepPurpleAccent;
                    imgVisible2 = true;
                  });
                },
              ),
              Visibility(
                visible: imgVisible2,
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(color: Colors.purple),
                  child: Image.asset("assets/images/flower.jpg"),
                ),
              ),
              Container(
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    fillColor: Colors.purple,
                  ),
                ),
              ),
              Row(
                children: [
                  const IconButton(
                      onPressed: null,
                      icon: Icon(Icons.menu)
                  ),
                  Expanded(child: Text('Home')),
                  const IconButton(
                      onPressed: null,
                      icon: Icon(Icons.search),
                      tooltip: 'search',
                  ),
                  Expanded(child: Text('Search'))
                ],
              ),
            ],
     ),
        ),
      ),
     );
  }
}






