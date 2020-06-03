import 'package:flutter/material.dart';
import 'package:successroad/api/databasehelper.dart';
import 'package:successroad/timeline/choocenavigation.dart';
import '../utilities/constants.dart';
void main(){
  runApp(MaterialApp(
    home:  Employee(),
  ));
}
class Employee extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _Employee();
  }
}
class Gender {
  String gender;

  Gender(this.gender);

  static List<Gender> getGender() {
    return <Gender>[Gender("MAle"), Gender("Female"), Gender("Not prefer")];
  }
}
class Manage {
  String man;

  Manage(this.man);

  static List<Manage> getManage() {
    return <Manage>[Manage("fully"), Manage("semi"), Manage("Non")];
  }
}

class _Employee extends State<Employee> {



  DatabaseHelper databaseHelper = new DatabaseHelper();
  final TextEditingController _nameController  = new TextEditingController();
  final TextEditingController _jobtybeController  = new TextEditingController();
  final TextEditingController _jobcategoryController  = new TextEditingController();
  final TextEditingController _addressController  = new TextEditingController();
  final TextEditingController _salaryController  = new TextEditingController();
  final TextEditingController _ganderController  = new TextEditingController();
  final TextEditingController _qualifcationController  = new TextEditingController();
  final TextEditingController _mobileController  = new TextEditingController();
  final TextEditingController _degreeController  = new TextEditingController();
  final TextEditingController _indestryController  = new TextEditingController();
  final TextEditingController _exprenseController  = new TextEditingController();




  List<Gender> _get_Gender = Gender.getGender();
  List<DropdownMenuItem<Gender>> _DropdownMenuItem;
  Gender _Selected_Gender;

  List<Manage> _get_Manage = Manage.getManage();
  List<DropdownMenuItem<Manage>> _DropdownMenuItem_Manage;
  Manage _Selected_Manage;

  @override
  //ده الي هيتحطلي من البدايه
  void initState() {
    _DropdownMenuItem =
        buildDropdownMenuIte(_get_Gender).cast<DropdownMenuItem<Gender>>();

    _Selected_Gender = _DropdownMenuItem[0].value;

    _DropdownMenuItem_Manage =
        buildDropdownMenuItem(_get_Manage).cast<DropdownMenuItem<Manage>>();
    _Selected_Manage = _DropdownMenuItem_Manage[0].value;
  }

  //
  List<DropdownMenuItem<Gender>> buildDropdownMenuIte(List _Clicked_Gender) {
    List<DropdownMenuItem<Gender>> item = List();

    for (Gender x in _Clicked_Gender) {
      item.add(DropdownMenuItem(
        value: x,
        child: Text(x.gender),
      ));
    }
    return item;
  }

  List<DropdownMenuItem<Manage>> buildDropdownMenuItem(List _Clicked_Manage) {
    List<DropdownMenuItem<Manage>> manage = List();

    for (Manage m in _Clicked_Manage) {
      manage.add(DropdownMenuItem(
        value: m,
        child: Text(m.man),
      ));
    }
    return manage;
  }

  onChanging1(Gender selected) {
    setState(() {
      _Selected_Gender = selected;
    });
  }

  onChanging2(Manage select) {
    setState(() {
      _Selected_Manage = select;
    });
  }


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
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
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
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
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
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
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
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
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
  Widget _gander() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _ganderController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
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
  Widget _qualification() {
    return Container(
      alignment: Alignment.topCenter,
      decoration: kBoxDecorationStyle,
      height: 100.0,

      child: TextField(
        controller: _qualifcationController,
        maxLines: 10,

        keyboardType: TextInputType.multiline,
        style: TextStyle(

          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.description,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Qualification",
          // labelStyle: kLabelStyle,
          hintText:  "Qualification",
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
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
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
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
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
  Widget _inndestory() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _indestryController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
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
  Widget _experince() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,

      child: TextField(
        controller: _exprenseController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.format_align_left,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Experince",
          //labelStyle: kLabelStyle,
          hintText:  "Experince",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }



  /*Widget _Gender() {
    return Container(
      padding: EdgeInsets.only(left: 11.0),
      alignment: Alignment.centerLeft,

      decoration: kBoxDecorationStyle,
      height: 63.0,
      child: DropdownButtonFormField(

        hint: Text("hello",style: TextStyle(color: Colors.white),),
        value: _Selected_Gender,
        items: _DropdownMenuItem,
        onChanged: onChanging1,
        decoration: new InputDecoration(
          icon: Icon(Icons.supervisor_account),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),),

          contentPadding: EdgeInsets.only(left:7.0,top: 15.0,right: 10.0),

          // hoverColor: Colors.orange,
          // enabledBorder: OutlineInputBorder(gapPadding: 21.0),
          hintText: 'Gender',
          focusColor: Colors.orange,
          labelStyle: TextStyle(color: Colors.white,fontSize: 20),
          labelText: "Gender",
          // labelStyle: ,
          //  hintStyle: kHintTextStyle,
          //icon: new Icon(Icons.person)
        ),
      ),
    );
  }*/


  Widget _build_Save() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 200.0,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          databaseHelper.employeeRegister(
              _nameController.text.trim(),
               _jobtybeController.text.trim(),
          _jobcategoryController.text.trim(),
           _addressController.text.trim(),
          _salaryController.text.trim(),
           _ganderController.text.trim(),
          _qualifcationController.text.trim(),
           _mobileController.text.trim(),
          _degreeController.text.trim(),
         _indestryController.text.trim(),
           _exprenseController.text.trim()


          );

          Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (BuildContext context) => new Timeline(),
              )
          );
          print("Save");
        },        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xFF0a2f52),
        child: Text(
          'Save',
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
  Widget build(BuildContext context) {
    return Scaffold(
      // yellow backgroundColor: Color(0xffF7DC6F),
      backgroundColor: Color(0xff5DADE2),
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 150.0),
                child:  ClipPath(
                  clipper: WaveClipper2(),
                  child: Container(
                    padding: EdgeInsets.only(),
                    width: double.infinity,
                    height: 485,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff5DADE2),
                            Color(0xffF2F3F4  ),
                          ],
                        )),
                  ),
                ),
              ),
              /*  Container(
               padding: EdgeInsets.only(top: 450),
               child:  ClipPath(
                 clipper: WaveClipper3(),
                 child: Container(

                   width: double.infinity,
                   height: 350,
                   decoration: BoxDecoration(
                       gradient: LinearGradient(colors: [
                         Color(0xffF1C40F),
                         Color(0xffF1C40F),
                         Color(0xffF1C40F),
                         Color(0xff85C1E9)
                       ])),
                 ),
               ),
             ),*/
              ClipPath(
                clipper: WaveClipper1(),
                child: Container(

                  width:double.infinity,
                  height:350,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF0a2f52),
                          Color(0xff2E86C1),
                        ],
                      )),
                ),
              ),
              Stack(
/*
          decoration: BoxDecoration(

            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF337db1),
                Color(0xFF0a2f52),
                Color(0xFF0a2f52),
                Color(0xFF0a2f52),
              ],
              stops: [
                0.1,
                0.3,
                0.5,
                0.7
              ],
            ),
          ),*/
                children: <Widget>[
                  SingleChildScrollView(
                    //padding: EdgeInsets.only(top: 0.0),

                    physics: AlwaysScrollableScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // Padding(padding: EdgeInsets.all(10.0)),

                        Container(
                          //Controlling the white place Shape
                          height: 650.0,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(75.0),
                              bottomRight: Radius.circular(75.0),
                              // bottomLeft: Radius.circular(75.0),
                              //   topRight: Radius.circular(75.0)
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
                                    padding: EdgeInsets.only(top: 0.0),
                                    alignment: Alignment.topCenter,
                                    child: Column(
                                      children: <Widget>[
                                        // Padding(padding: EdgeInsets.only(top: 2.0)),

                                        Row(
                                          children: <Widget>[
                                            _firstname(),
                                          ],
                                        ),

                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _jobtybe(),
                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _jobcategory(),
                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _address(),

                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _salary(),


                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _gander(),


                                        Divider(thickness: 1.0,color: Colors.black,),

                                        _qualification(),

                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _phone(),

                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _degree(),

                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _inndestory(),

                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _experince(),

                                        Divider(thickness: 1.0,color: Colors.black,),
                                        _build_Save(),
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
    );
  }
}
class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    //امشي من البدايه علي الشمال لحد طول الكونتينر ونقص من طوله 50
    //ده كدا خط مستقيم علي الشمال
    path.lineTo(0.0, size.height );
//دلوقتي انا واقف علي الشمال عن طول الكونتينر - 50 وهعمل حاجتين
    // وهتحر من نقطتي الي نقطه الموجه الي هيا كنترول بوينت وهتجرك بعدين للاند بوينت الي هيا في نص الموجه لما تزل

    var firstEndPoint = Offset(size.width /2-20, size.height-60);



    var firstControlPoint = Offset(size.width/2-150, size.height -60);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);



    var secondEndPoint = Offset(
        size.width,//كدا معناها ان كمل بقي خلاص لحد اخر العرض
        size.height/2);//كده معناه ان الطول نقص منه 2






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
}*/

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height );

    var firstEndPoint = Offset(size.width /2-20, size.height );
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);


    var secondEndPoint = Offset(size.width, size.height - 200);
    var secondControlPoint = Offset(size.width /2-20, size.height - 120);
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
