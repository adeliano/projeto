import 'dart:convert';

import 'package:flutter/material.dart';

class Getjson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("teste");
    /*return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/python.json"),
      builder: (context, snapshot){
        var mydata = json.decode(snapshot.data.toString());
        if(mydata == null){
          return Scaffold(
            body: Center(
              child: Text(
                "",
              ),
            ),
          );
        }else{
          return Quizpage();
        }
      },
    );*/
    return Quizpage();
  }
}

class Quizpage extends StatefulWidget {
  @override
  _QuizpageState createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {

  int _grupValue = 1;

  void onChanged(int value){
    setState(() {
      _grupValue = value;
    });

  }


  void verificarResposta(int resposta){
    print(resposta);
  }

  Widget choicebutton(){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: (){},
        child: Text("opção 1",
          style: TextStyle(
            color: Colors.white, fontSize: 16.00,
          ),
        ),
        color: Colors.indigo,
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 45.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QUIZ"),),

      body: new Container(
        padding: EdgeInsets.all(8.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('A PRIMEIRA PERGUNTA',
            style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold
            ),
            ),
            new Padding(
              padding: new EdgeInsets.all(8.0),
            ),
            new Divider(height: 5.0, color:  Colors.black),
            new Padding(
              padding: new EdgeInsets.all(8.0),
            ),
           /* new Text(
              'teste01:', style: new TextStyle(
              fontWeight: FontWeight.bold,fontSize: 18.0,),
            ),*/
            new Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Radio(value: 0, groupValue: _grupValue,
                    onChanged: (int value){onChanged(value);}),
                new Text("opção1 "),

              ],
            ),
            new Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Radio(value: 1, groupValue: _grupValue,
                    onChanged: (int value){onChanged(value);}),
                new Text("opção2 "),

              ],
            ),
            new Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new Radio(value: 2, groupValue: _grupValue,
                    onChanged: (int value){onChanged(value);}),
                new Text("opção3 "),

              ],
            ),
            new Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Radio(value: 3, groupValue: _grupValue,
                    onChanged: (int value){onChanged(value);}),
                new Text("opção4 "),

              ],
            )
          ],
        ),
      ),
    );
  }
}

