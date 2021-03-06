import 'package:flutter/material.dart';
import 'package:successroad/api/databasehelper.dart';
import 'package:successroad/jobs/editjob.dart';
import 'package:successroad/jobs/showoneapplyedjob.dart';

class CompanyDashboardjobs extends StatefulWidget {
  @override
  CompanyDashboardjobsState createState() => CompanyDashboardjobsState();
}

class CompanyDashboardjobsState extends State<CompanyDashboardjobs> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1B4F72),
            title: Text("My Jobs main"),
            centerTitle: true,
          ),
          body: new FutureBuilder<List<dynamic>>(
            future: databaseHelper.getCurrentUserJobs(),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? new ItemList(list: snapshot.data)
                  : new Center(
                      child: new CircularProgressIndicator(),
                    );
            },
          )),
    );
  }
}

class ItemList extends StatelessWidget {
  List list;

  ItemList({this.list});

  DatabaseHelper databaseHelper = new DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new SingleChildScrollView(
            padding: EdgeInsets.only(top: 5.0),
              child: Card(
                margin: EdgeInsets.only(right: 5.0,left: 5.0,bottom: 10.0),
                //  borderOnForeground: true,
                color: Colors.white,
                child:  Column(

                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          //padding: EdgeInsets.only(top: 20.0),
                            color: Colors.white,
                            height: 200,
                            width: double.infinity,
                            child: Image.asset(
                              "assets/Business Plan-pana.png",
                              fit: BoxFit.cover,
                            )),
                        
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
                                  "id :${list[i]['id']}",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xFF0a2f52),
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                    "Catagory: ${list[i]['catagory']}",
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
                                    Icons.supervisor_account,
                                    color: Color(0xff2E86C1),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "jobType:${list[i]['jtype']}",
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
                                    "Address: ${list[i]['address']}",
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
                                    "Salary: ${list[i]['salary']}",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Color(0xFF0a2f52)),
                                  ),
                                ],
                              )
                            ],
                          ),

                          Divider(),
                          SizedBox(
                            height: 10.0,
                          ),

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
                                    "Address: ${list[i]['address']}",
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
                                    "Gender: ${list[i]['gander']}",
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
                                    Icons.queue,
                                    color: Color(0xff2E86C1),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "Qualification: ${list[i]['qualification']}",
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
                                    "Experience: ${list[i]['experience']}",
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
                          Container(
                            alignment: Alignment.topLeft,
                            child: Wrap(
                              children: <Widget>[
                                Icon(
                                  Icons.comment,
                                  color: Color(0xff2E86C1),
                                ),
                                SizedBox(width: 5.0,),
                                Text("Description :${list[i]['description']}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Color(0xFF0a2f52)),
                                )
                              ],
                            ),
                          ),


                          Divider(
                            color: Color(0xff1B4F72),
                            thickness: 1.0,
                            endIndent: 25.0,
                            indent: 25,
                            //  height: 20.0,
                          ),


                          Container(
                            padding: EdgeInsets.only(top: 10.0),
                            height: 35.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton.icon(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        new EditData(list: list, index: i),
                                      ));
                                      print("Edit");
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: Color(0xff1B4F72),
                                      size: 20.0,
                                    ),
                                    label: Text("Edit")),
                                SizedBox(
                                  width: 10.0,
                                ),
                                FlatButton.icon(
                                    onPressed: () {
                                      databaseHelper
                                          .deleteDataJobs(list[i]['id']);
                                      print("Delete");
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Color(0xff1B4F72),
                                      size: 20.0,
                                    ),
                                    label: Text("Delete")),
                                SizedBox(
                                  width: 10.0,
                                ),
                                FlatButton.icon(
                                    onPressed: () {
                                      // var databaseHelper=list[i]['id'];

                                      Navigator.of(context)
                                          .push(new MaterialPageRoute(
                                        builder: (BuildContext context) => new ShowOneApplyJob(list: list, index: i),
                                      ));
                                      print("Apply Request");
                                    },
                                    icon: Icon(
                                      Icons.playlist_add,
                                      color: Color(0xff1B4F72),
                                      size: 20.0,
                                    ),
                                    label: Text("Apply Req"))
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 1.0,
                      //  height: 20.0,
                    )
                  ],
                ),
              )
          );
        }
        );
  }
}
