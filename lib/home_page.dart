import 'package:abdul/second_page.dart';
import 'package:flutter/material.dart';

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
String imgSrc1 = "https://i.imgur.com/fHyEMsl.jpg";
double imgHeight = 150;
double imgWidth = 240;



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
              ElevatedButton.icon(
                icon: Icon(Icons.near_me),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                },
                label: Text('Go To next page'),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(

                          image: DecorationImage(image: NetworkImage(imgSrc1), fit: BoxFit.cover),
                          border: Border.all(color: Colors.purple, width: 4),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        height: imgHeight,
                        width: imgWidth,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(imgSrc1), fit: BoxFit.cover),
                          border: Border.all(color: Colors.purple, width: 4),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        height: imgHeight,
                        width: imgWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(imgSrc1), fit: BoxFit.cover),
                          border: Border.all(color: Colors.purple, width: 4),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        height: imgHeight,
                        width: imgWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(imgSrc1), fit: BoxFit.cover),
                          border: Border.all(color: Colors.purple, width: 4),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        height: imgHeight,
                        width: imgWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(imgSrc1), fit: BoxFit.cover),
                          border: Border.all(color: Colors.purple, width: 4),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        height: imgHeight,
                        width: imgWidth,
                      ),
                    ),

                  ],
                ),
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
                  child: Image.network(imgSrc1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 5),
                child: RaisedButton(
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

            ],
          ),
        ),
      ),
    );
  }
}