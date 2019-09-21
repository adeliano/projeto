import 'package:flutter/material.dart';
import 'package:projeto/ui/quizpage.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<String> images = [
    "images/imagem.png",
  ];

  Widget customcard(String langname, String image){
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: (){
         Navigator.of(context).push(MaterialPageRoute(
           builder: (context) => Getjson(),
         ));
        },
        child: Material(
          color: Colors.indigo,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white, fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "descrição de alguma coisa",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white),
                    maxLines: 5,
                      textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QUIZ",
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("MANUTENÇÃO", images[0]),
        ],
      ),
    );
  }
}
