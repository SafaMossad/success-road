import 'package:flutter/material.dart';
import 'package:successroad/api/databasehelper.dart';
import 'package:successroad/profiles/emmployeeprofile.dart';
import 'package:successroad/profiles/ideamakerprofile.dart';
import 'package:successroad/utilities/constants.dart';

class EmployeeEditData extends StatefulWidget {
  Map map;

//  int index=1;

  EmployeeEditData(this.map);

  @override
  EditDataState createState() => EditDataState();
}

class EditDataState extends State<EmployeeEditData> {
  String _genderDropdownValue = 'male';

  // To show Selected Item in Text.
  String genderHolder = '';

  List<String> genderItems = [
    'male',
    'female',
    'not prefer',
  ];

  void getDropDownItemGender() {
    setState(() {
      genderHolder = _genderDropdownValue;
    });
  }

  DatabaseHelper databaseHelper = new DatabaseHelper();

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _jobtybeController = new TextEditingController();
  TextEditingController _jobcategoryController = new TextEditingController();
  TextEditingController _addressController = new TextEditingController();
  TextEditingController _salaryController = new TextEditingController();
  TextEditingController _qualifcationController = new TextEditingController();
  TextEditingController _mobileController = new TextEditingController();
  TextEditingController _degreeController = new TextEditingController();
  TextEditingController _indestryController = new TextEditingController();
  TextEditingController _exprenseController = new TextEditingController();

  Widget _firstname() {
    return Container(
      /*alignment: Alignment.topCenter,
      padding: EdgeInsets.only(bottom:10.0),*/
      decoration: kBoxDecorationStyle,
      height: 50.0,
      width: 165.0,
      child: TextField(
        controller: _nameController,
        keyboardType: TextInputType.emailAddress,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.person,
            color: Color(0xFF8b8b8b),
          ),
          // labelText: "First Name",
          // labelStyle: kLabelStyle,
          hintText: 'First Name',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

/*
  Widget _lastname() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      width: 165.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.person,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Last Name",
          //labelStyle: kLabelStyle,
          hintText: 'Last Name',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }
*/

  Widget _jobtybe() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _jobtybeController,
        keyboardType: TextInputType.emailAddress,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.mail,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "E-mail",
          //labelStyle: kLabelStyle,
          hintText: "E-mail",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _jobcategory() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _jobcategoryController,
        keyboardType: TextInputType.emailAddress,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.vpn_key,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Password",
          //labelStyle: kLabelStyle,
          hintText: "Password",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _address() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _addressController,
        keyboardType: TextInputType.emailAddress,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.home,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Address",
          //labelStyle: kLabelStyle,
          hintText: "Address",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _salary() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _salaryController,
        keyboardType: TextInputType.emailAddress,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.phone_android,
            color: Color(0xFF8b8b8b),
          ),
          // labelText: "Phone",
          // labelStyle: kLabelStyle,
          hintText: "Phone",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _gender() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 60.0,
      padding: EdgeInsets.only(left: 50.0),
      // width: 150.0,
      child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "Gender:",
              style: kLabelStyle,
            ),
            SizedBox(
              width: 100.0,
            ),
            Container(
              width: 120.0,
              child: DropdownButton<String>(
                value: _genderDropdownValue,
                icon: Icon(
                  Icons.arrow_drop_down_circle,
                ),
                iconSize: 18,
                elevation: 16,
                style: TextStyle(
                    color: Colors.black,
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'co',
                    fontSize: 20.0),
                onChanged: (String data) {
                  setState(() {
                    _genderDropdownValue = data;
                  });
                },
                items:
                    genderItems.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget _qualification() {
    return Container(
      alignment: Alignment.topCenter,
      decoration: kBoxDecorationStyle,
      height: 100.0,
      child: TextField(
        controller: _qualifcationController,
        maxLines: 10,
        keyboardType: TextInputType.multiline,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.description,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Qualification",
          // labelStyle: kLabelStyle,
          hintText: "Qualification",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _phone() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _mobileController,
        keyboardType: TextInputType.emailAddress,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.phone_android,
            color: Color(0xFF8b8b8b),
          ),
          // labelText: "Phone",
          // labelStyle: kLabelStyle,
          hintText: "Phone",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _degree() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _degreeController,
        keyboardType: TextInputType.emailAddress,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.phone_android,
            color: Color(0xFF8b8b8b),
          ),
          // labelText: "Phone",
          // labelStyle: kLabelStyle,
          hintText: "deg",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _inndestory() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _indestryController,
        keyboardType: TextInputType.emailAddress,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.phone_android,
            color: Color(0xFF8b8b8b),
          ),
          // labelText: "Phone",
          // labelStyle: kLabelStyle,
          hintText: "inndestory",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _experince() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      child: TextField(
        controller: _exprenseController,
        keyboardType: TextInputType.emailAddress,
        style: kLabelStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.format_align_left,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Experince",
          //labelStyle: kLabelStyle,
          hintText: "Experince",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _buildEditEmpBtns() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 150.0,
      child: RaisedButton(
        elevation: 20.0,
        onPressed: ()
//        {
////                    databaseHelper.editData(widget.list[widget.index]['id']
////                        , _nameController.text.trim(), _priceController.text.trim());
//                    Navigator.of(context).push(new MaterialPageRoute(
//                      builder: (BuildContext context) => new Dashboard(),
//                    ));
//                  },
            {
          databaseHelper.editEmployeeData(
              _nameController.text.trim(),
              _jobtybeController.text.trim(),
              _jobcategoryController.text.trim(),
              _addressController.text.trim(),
              _salaryController.text.trim(),
              _genderDropdownValue.trim(),
              _qualifcationController.text.trim(),
              _mobileController.text.trim(),
              _degreeController.text.trim(),
              _indestryController.text.trim(),
              _exprenseController.text.trim());
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new EmployeeProfile(),
          ));
          print("Edit");
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xFF0a2f52),
        child: Text(
          'Edit Idea',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _nameController = new TextEditingController(text: widget.map['name']);
    _jobtybeController = new TextEditingController(text: widget.map['jobtybe']);
    _jobcategoryController = new TextEditingController(text: widget.map['jobcategory']);
    _addressController = new TextEditingController(text: widget.map['address']);
    _salaryController = new TextEditingController(text: widget.map['salary']);
    _qualifcationController = new TextEditingController(text: widget.map['qualifcation']);
    _mobileController = new TextEditingController(text: widget.map['mobile']);
    _degreeController = new TextEditingController(text: widget.map['degree']);
    _indestryController = new TextEditingController(text: widget.map['indestry']);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Update Idea',
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      //padding: EdgeInsets.only(top: 0.0),
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          //Padding(padding: EdgeInsets.all(10.0)),
                          Container(
                            //Controlling the white place Shape
                            height: 670.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(75.0),
                                bottomRight: Radius.circular(75.0),
                              ),
                            ),
                            padding: EdgeInsets.all(20.0),

                            //Stack That Controlling Data In Container
                            child: Stack(
                              //primary: false,
                              //padding: EdgeInsets.only(left: 25.0, right: 20.0),
                              children: <Widget>[
                                ListView(
                                  children: <Widget>[
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height +
                                              170,
                                      padding: EdgeInsets.only(top: 30.0),
                                      alignment: Alignment.topCenter,
                                      child: Column(
                                        children: <Widget>[
                                          // Padding(padding: EdgeInsets.only(top: 2.0)),

                                          Row(
                                            children: <Widget>[
                                              _firstname(),
                                            ],
                                          ),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _jobtybe(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _jobcategory(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _address(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _salary(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _gender(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _qualification(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _phone(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _degree(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),
                                          _inndestory(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _experince(),

                                          Divider(
                                            thickness: 1.0,
                                            color: Colors.black,
                                          ),

                                          _buildEditEmpBtns(),

                                          SizedBox(
                                            height: 20.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    //امشي من البدايه علي الشمال لحد طول الكونتينر ونقص من طوله 50
    //ده كدا خط مستقيم علي الشمال
    path.lineTo(0.0, size.height);
//دلوقتي انا واقف علي الشمال عن طول الكونتينر - 50 وهعمل حاجتين
    // وهتحر من نقطتي الي نقطه الموجه الي هيا كنترول بوينت وهتجرك بعدين للاند بوينت الي هيا في نص الموجه لما تزل

    var firstEndPoint = Offset(size.width / 2 - 20, size.height - 60);

    var firstControlPoint = Offset(size.width / 2 - 150, size.height - 60);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(
        size.width, //كدا معناها ان كمل بقي خلاص لحد اخر العرض
        size.height / 2); //كده معناه ان الطول نقص منه 2

    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/*class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height/2+30);
    var firstEndPoint = Offset(size.width/2-20, size.height /2+10);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
*/
class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);

    var firstEndPoint = Offset(size.width / 2 - 20, size.height);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 200);
    var secondControlPoint = Offset(size.width / 2 - 20, size.height - 120);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}