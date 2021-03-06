import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:successroad/api/databasehelper.dart';

class Employeejob extends StatefulWidget {
  @override
  _EmployeejobState createState() => _EmployeejobState();
}

class _EmployeejobState extends State<Employeejob> {
  DatabaseHelper databaseHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      /* body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 145),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: new FutureBuilder<Map<String, dynamic>>(
                  future: databaseHelper.getEmployeejob(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) print("snapshot.error");
                    return snapshot.hasData
                        ? new ItemList(list: snapshot.data)
                        : new Center(
                      child: new CircularProgressIndicator(),
                    );
                  },
                ),
//                  child: ListView.builder(
//                      itemCount: schoolLists.length,
//                      itemBuilder: (BuildContext context, int index) {
//                        return buildList(context, index);
//                      }),
              ),
            ],
          ),
        ),
      ),*/
      body: new FutureBuilder<List<dynamic>>(
        future: databaseHelper.getEmployeejob(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new ItemList(list: snapshot.data)
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
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
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
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
                          "assets/SponsorTimlline.png",
                          fit: BoxFit.cover,
                        )),

                  ],
                ),

                //fot time
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 16.0, top: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 5.0,
                      ),

                      //title
                      Text(
                        "Title :${list[i]["Responce"]}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        color: Color(0xff2E86C1),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      //Row for Category & Manage
                      Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.category,
                                color: Color(0xff2E86C1),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Catagory: ${list[i]["job"]["catagory"]}",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xFF0a2f52)),
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 10.0,
                          ),
                          Divider(),


                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.open_with,
                                color: Color(0xff2E86C1),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Job Tybe: ${list[i]["job"]["jtype"]}",
                                style: TextStyle(fontSize: 15.0, color: Color(0xFF0a2f52)),
                              ),
                            ],
                          )
                        ],
                      ),

                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(),
                      //Padding(padding: EdgeInsets.only(right: 50.0)),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Color(0xff2E86C1),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Address: ${list[i]["job"]["address"]}",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xFF0a2f52)),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 10.0,
                          ),
                          Divider(),


                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.monetization_on,
                                color: Color(0xff2E86C1),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Salary: ${list[i]["job"]["salary"]}",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xFF0a2f52)),
                              ),
                            ],
                          )
                        ],
                      ),

                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(),


                      Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.supervised_user_circle,
                                color: Color(0xff2E86C1),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Gender: ${list[i]["job"]["gander"]}",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xFF0a2f52)),
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 10.0,
                          ),
                          Divider(),

                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.vpn_lock,
                                color: Color(0xff2E86C1),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "country: ${list[i]["job"]["country"]}",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xFF0a2f52)),
                              ),
                            ],
                          )



                        ],
                      ),


                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(),


                      Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Color(0xff2E86C1),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Address: ${list[i]["job"]["city"]}",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xFF0a2f52)),
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 10.0,
                          ),
                          Divider(),
                        Row(
                          children: <Widget>[

                            Icon(
                              Icons.comment,
                              color: Color(0xff2E86C1),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "qualification: ${list[i]["job"]["qualification"]}",
                              style: TextStyle(
                                  fontSize: 15.0, color: Color(0xFF0a2f52)),
                            ),
                          ],
                        )


                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(),

                      Column(
                        children: <Widget>[
                        Row(children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Color(0xff2E86C1),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Experience: ",
                            style: TextStyle(
                                fontSize: 15.0, color: Color(0xFF0a2f52)),
                          ),
                        ],),
                          Container(
                            child: Text(
                              "  ${list[i]["job"]["experience"]} .",
                              style: TextStyle(
                                  fontSize: 15.0, color: Color(0xFF0a2f52)),
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.comment,
                                color: Color(0xff2E86C1),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text('Description :'),
                            ],
                          ),

                          Container(
                            alignment: Alignment.topLeft,
                            child: Wrap(

                              children: <Widget>[
                                Text("${list[i]["job"]['description']}",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xFF0a2f52)),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(color: Color(0xff2E86C1),),
              ],
            ),
          );

        });
  }
}
