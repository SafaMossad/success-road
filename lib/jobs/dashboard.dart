import 'package:successroad/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:successroad/api/databasehelper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:successroad/jobs/addjob.dart';
import 'package:successroad/jobs/showjob.dart';


class IdeaMakerJobsDashboard extends StatefulWidget{

  IdeaMakerJobsDashboard({Key key , this.title}) : super(key : key);
  final String title;

  @override
  IdeaMakerJobsDashboardState  createState() => IdeaMakerJobsDashboardState();
}

class IdeaMakerJobsDashboardState extends State<IdeaMakerJobsDashboard> {

  DatabaseHelper databaseHelper = new DatabaseHelper();



  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Dashboard',
      home: Scaffold(


          body: new FutureBuilder<List>(
            future: databaseHelper.getCurrentUserJobs(),
            builder: (context ,snapshot){
              if(snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? new ItemList(list: snapshot.data)
                  : new Center(child: new CircularProgressIndicator(),);
            },
          )
      ),
    );
  }


}

class ItemList extends StatelessWidget {

  List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: list==null?0:list.length,
        itemBuilder: (context,i){
          return new SingleChildScrollView(
            padding: EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/94393013-team-work-in-training-room-with-planning-board.jpg",
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                      top: 0.0,
                      left: 20.0,
                      right: 20.0,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.slideshow,
                            color: Colors.black87,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "My Invest",
                            style: TextStyle(color: Colors.black87),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 16.0, top: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "Oct 21, 2017",
                              style: TextStyle(
                                  fontSize: 15.0, color: Color(0xFF0a2f52)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Title :${list[i]['title']}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFF0a2f52),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        color: Color(0xff2E86C1),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Wrap(
                        runSpacing: 2.0, // gap between lines
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Icon(
                            Icons.category,
                            color: Color(0xff2E86C1),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Catagory: ${list[i]['title']}",
                            style: TextStyle(
                                fontSize: 15.0, color: Color(0xFF0a2f52)),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Icon(
                            Icons.supervisor_account,
                            color: Color(0xff2E86C1),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Managment:${list[i]['title']}",
                            style: TextStyle(
                                fontSize: 15.0, color: Color(0xFF0a2f52)),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xff2E86C1),
                      ),
                      //Padding(padding: EdgeInsets.only(right: 50.0)),
                      Wrap(
                        runSpacing: 2.0, // gap between lines
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Color(0xff2E86C1),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Address: ${list[i]['title']}",
                            style: TextStyle(
                                fontSize: 15.0, color: Color(0xFF0a2f52)),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Icon(
                            Icons.comment,
                            color: Color(0xff2E86C1),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Funding: ${list[i]['title']}",
                            style: TextStyle(
                                fontSize: 15.0, color: Color(0xFF0a2f52)),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xff2E86C1),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Description :",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "sadhashdhashhdhashdhjashdbhasjhbdjjhdbasjhbdbasjhdbhjasbhbd"
                                "asdasgsdaasbasbadsbhjasbsnbndsbnasbndbnbnasbnsdbbnasbndbnasbnbndbnadsbnadsb"
                                "savdcgasghasvbnadsbnadbnsdbnasdbnbasasbnasjkhgdgashdhgadggasgjhdghasj"
                                "asnasvashvadsvhvhdjb asnbbndbnasbnvdvansdgvashdghasvhvdvasghgvdghasghv"
                                " ${list[i]['title']}.",
                            style: TextStyle(
                                fontSize: 15.0, color: Color(0xFF0a2f52)),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: null,
                            child: Text("Edit"),
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                          RaisedButton(
                            onPressed: null,
                            child: Text("delete"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: ()=> print("object"),
                            child: Text("Show Request"),
                            color: Colors.yellow,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black87,
                  thickness: 1.0,
                  height: 50.0,
                )
              ],
            ),
          );

        }
    );
  }
}