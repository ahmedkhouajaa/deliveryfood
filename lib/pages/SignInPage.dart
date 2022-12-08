import 'package:delveryyyfood/pages/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../animation/ScaleRoute.dart';
import 'SignUpPage.dart';


// else {
      //AwesomeDialog(
     //    context: context,
      //    title: 'error',
        //  body: Text("Wrong password provided for that user."))
      //  ..show;
  // }
 // }


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
   var useremailss, userpasswordss;
  GlobalKey<FormState> redhawk = new GlobalKey<FormState>();

 

  signin() async {
    var formdata = redhawk.currentState;
    if (formdata!.validate()) {
      formdata.save();
      print("mrigel");
      try {
        UserCredential userr = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: useremailss, password: userpasswordss);
        return UserCredential;
        
        
      } on FirebaseAuthException catch (e) {
     //   if (e.code == 'user-not-found') {
      //    AwesomeDialog(
      //        context: context, title: 'error', body: Text("user-not-found"))
       //     ..show;

          print('No user found for that email.');
        } //else if (e.code == 'wrong-password') {
        //  AwesomeDialog(
        //      context: context,
        //      title: 'error',
        //      body: Text("Wrong password provided for that user."))
        ///    ..show;
      //    print('Wrong password provided for that user.');
        }
      
    }

  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20,  top: 35, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Form(
          key: redhawk,
          child: Column(
            children: <Widget>[
             
             Flexible(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Paradize",style: TextStyle(fontSize: 30,color: Colors.purple),),
                 //     Container
                  //      width: 230,
                  //      height: 100,
                  //      alignment: Alignment.center,
                  //      child: Image.asset(
                  //        "assets/images/menus/ic_food_express.png",
                  //      ),
                  //    ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onSaved: (newValue) {
                          useremailss = newValue ; 
                        },
                        showCursor: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xFF666666),
                            size: defaultIconSize,
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          hintStyle: TextStyle(
                              color: Color(0xFF666666),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize),
                          hintText: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                         onSaved: (newValue) {
                          userpasswordss = newValue ; 
                        },
                        showCursor: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color(0xFF666666),
                            size: defaultIconSize,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Color(0xFF666666),
                            size: defaultIconSize,
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          hintStyle: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                          ),
                          hintText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
      width: double.infinity,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0xFFfbab66),
          ),
          BoxShadow(
            color: Color(0xFFf7418c),
          ),
        ],
        gradient: new LinearGradient(
            colors: [Color(0xFFf7418c), Color(0xFFfbab66)],
            begin: const FractionalOffset(0.2, 0.2),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: MaterialButton(
          highlightColor: Colors.transparent,
          splashColor: Color(0xFFf7418c),
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
            child: Text(
              "SIGN IN",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: "WorkSansBold"),
            ),
          ),
          onPressed: ()async {
                          var userss = await signin();
                          if (userss != null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomePage())));
                          }
                        },),
    ),
                      SizedBox(
                        height: 2,
                      ),
                      FacebookGoogleLogin()
                    ],
                  ),
                ),
              
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                        Navigator.push(context, ScaleRoute(page: SignUpPage()))
                        },
                        child: Container(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xFFf7418c),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



class FacebookGoogleLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        Colors.black12,
                        Colors.black54,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                width: 100.0,
                height: 1.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  "Or",
                  style: TextStyle(
                      color: Color(0xFF2c2b2b),
                      fontSize: 16.0,
                      fontFamily: "WorkSansMedium"),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        Colors.black54,
                        Colors.black12,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                width: 100.0,
                height: 1.0,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
    //        Padding(
     //         padding: EdgeInsets.only(top: 10.0, right: 40.0),
    //          child: GestureDetector(
    //            onTap: () {},
    //            child: Container(
    //              padding: const EdgeInsets.all(15.0),
    //              decoration: new BoxDecoration(
    //                shape: BoxShape.circle,
    //                color: Color(0xFFf7418c),
    //              ),
    //              child: Icon(
    //               Icons.facebook,
    //                color: Color(0xFFFFFFFF),
    //              ),
     //           ),
     //         ),
     //       ),
      //      Padding(
       //       padding: EdgeInsets.only(top: 10.0),
        //      child: GestureDetector(
         //       onTap: () => {},
        //        child: Container(
         //         padding: const EdgeInsets.all(15.0),
          //        decoration: new BoxDecoration(
          //          shape: BoxShape.circle,
          //          color: Color(0xFFf7418c),
          //        ),
         //         child: new Icon(
          //          Icons.ac_unit,
         //           color: Color(0xFFFFFFFF),
         //         ),
        //        ),
       //       ),
      //      ),
          ],
        ),
      ],
    ));
  }
}