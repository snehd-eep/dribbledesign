import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actors',

      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> movielist = [
    'assets/images/poster1.jpg',
    'assets/images/poster2.jpg',
    'assets/images/poster3.jpg',
    'assets/images/poster1.jpg',
    'assets/images/poster2.jpg',
    'assets/images/poster3.jpg'
  ];




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: size.height/1.6,
              child: Stack(
                children: [
                  Positioned(
                    right: -size.width*0.08,
                    width: size.width,
                    height: size.height/1.6,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/actress.jpg',
                          ),
                            fit: BoxFit.cover,

                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                          boxShadow: [new BoxShadow(
                            color: Colors.black.withOpacity(0.50),
                            blurRadius: 20.0,
                          ),]

                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                width: size.width*0.18,
                                height: size.width*0.18,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF7192),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topRight:Radius.circular(30) ),


                                ) ,
                                child: Icon(
                                  CupertinoIcons.heart_fill,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height/15,
                    left: size.width*0.08/2.5,
                    child: ClipOval(
                        child: Material(
                          color: Colors.white, // button color
                          child: InkWell(
                            splashColor: Colors.black, // inkwell color
                            child: SizedBox(width: 56, height: 56, child: Icon(Icons.chevron_left
                            ,size: size.width/10,)),
                            onTap: () {},
                          ),
                        ),

                  ),
                  ),
                ],
              ),
            ),

            Container(
              color: Color(0xFF50ABFF),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.width*0.08,top: 20),
                      child: Text(
                        'Zendaya Coleman',

                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: size.width/8,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Ted(size: size,text: 'WATCHED',fontWeight: FontWeight.bold,),
                        Ted(size: size,text: 'FANS',fontWeight: FontWeight.bold,),
                        Ted(size: size,text: 'RATING',fontWeight: FontWeight.bold,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Ted(size: size,text: '3/16',),
                        Ted(size: size,text: '2138',),
                        Ted(size: size,text: '8.6',)
                      ],
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
            contentlist(size: size, movielist: movielist,color: Color(0xFF50ABFF),backgroundCOlor: Colors.white,name: 'Movies',),
            Container(
              color: Color(0xFFF16F6F),
              width: double.infinity,
              height: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF50ABFF),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40))
                ),
              ),
            ),
            contentlist(size: size, movielist: movielist,color: Color(0xFFF16F6F),backgroundCOlor: Color(0xFF50ABFF),name: 'TV Series',),
          ],
        ),
      ),

    );
  }
}

class contentlist extends StatelessWidget {
  const contentlist({
    Key key,
    @required this.size,
    @required this.movielist,
    @required this.color,
    @required this.backgroundCOlor,
    @required this.name
  }) : super(key: key);

  final Size size;
  final List<String> movielist;
  final Color color;
  final Color backgroundCOlor;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundCOlor,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40))
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top:30,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width/15
                    ),
                  ),
                   Row(
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width/25,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height/3.5,
              child: ListView.builder(
                  itemCount: movielist.length,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (BuildContext context, int index){
                    return new Container(
                      width:size.width/3,

                      margin: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                movielist[index],
                              ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                    );
                  }

              ),
            ),
          ],
        ),


      ),
    );
  }
}

class Ted extends StatelessWidget {
   Ted({
    Key key,
    @required this.size, this.text, this.fontWeight
  }) : super(key: key);

  final Size size;
  final String text;
  FontWeight fontWeight = null;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black.withOpacity(0.50),
        fontSize: size.width*0.04,
        fontWeight: fontWeight
      ),
    );
  }
}
