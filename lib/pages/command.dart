import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delveryyyfood/pages/HomePage.dart';
import 'package:flutter/material.dart';

class Command extends StatefulWidget {
  const Command({super.key});

  @override
  State<Command> createState() => _CommandState();
}

class _CommandState extends State<Command> {
  final modelname = TextEditingController();
  final vehiclenumber = TextEditingController();
  final mobilenumber = TextEditingController();
  final type = TextEditingController();
  CollectionReference takenotes =
      FirebaseFirestore.instance.collection("notes");
  var plat, numtel, fullname, adresse;
  GlobalKey<FormState> redhawk2 = new GlobalKey<FormState>();
    
  vale() async {
    var formdata = redhawk2.currentState;
    if (formdata!.validate()) {
     
       formdata.save();
      print("hi");
      
      
     
        await takenotes.add({
        "fullname": fullname,
        "adresse": adresse,
        "numtel": numtel,
        "plat": plat,
      });
    } else {
     
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        title: Text(
          'Add Command ',
          style: TextStyle(
            fontFamily: 'Bowlby',
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.aspectRatio * 70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: redhawk2,
          child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        onSaved: (newValue) {
                          fullname = newValue;
                        },
                        controller: modelname,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'full name',
                          suffixIcon: Icon(Icons.person),
                          floatingLabelStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.black)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.blue)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        onSaved: (newValue) {
                          numtel = newValue;
                        },
                        controller: vehiclenumber,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'num tel',
                          suffixIcon: Icon(Icons.phone),
                          floatingLabelStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.black)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.blue)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        onSaved: (newValue) {
                          adresse = newValue;
                        },
                        controller: mobilenumber,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'adresse',
                          suffixIcon: Icon(Icons.email),
                          floatingLabelStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.black)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.blue)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        onSaved: (newValue) {
                          plat = newValue;
                        },
                        controller: type,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'plat',
                          suffixIcon: Icon(Icons.food_bank),
                          floatingLabelStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.black)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.blue)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.075,
                      child: ElevatedButton(
                        onPressed: () async {
                          await vale();
                          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'DelaGothic'),
                        ),
                        style: ElevatedButton.styleFrom(
                            enableFeedback: false,
                            elevation: 20,
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
