import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projects/BottomNav/Layout.dart';
import 'package:projects/Signup.dart';


class ThirdPage extends StatefulWidget {
  ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool x = true;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  // void signInWithEmailAndPassword(String email, String password) async {
  //   try {
  //     UserCredential userCredential =
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //
  //     if (userCredential.user != null) {
  //       Navigator.pushReplacementNamed(context, '/home');
  //     }
  //   } catch (e) {
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Sign-In Failed'),
  //           content: Text('Invalid email or password.'),
  //           actions: [
  //             TextButton(
  //               child: Text('OK'),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }
  void signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => layoutscreen()),
        );
      }
    } catch (e) {
      // Handle sign-in failure
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Sign-In Failed'),
            content: Text('Invalid email or password.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
  void send() {
    var formdate = formstate.currentState;
    if (formdate!.validate()) {
      print("valid");
    } else {
      print("not valid");
    }
  }

  TextEditingController passwordtext = TextEditingController();
  TextEditingController emailtext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F9F9),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
        ),
      ),
      body: Form(
        key: formstate,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Text(
                        "login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: TextFormField(
                    controller: emailtext,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can't be empty";
                      }
                      final emailRegex = RegExp(
                          r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                      if (!emailRegex.hasMatch(value)) {
                        return "Invalid email address";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: "Email",
                      fillColor: Colors.red,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),
                      hoverColor: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: passwordtext,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password can't be empty";
                    }
                    if (value.length < 4) {
                      return "Password is too short";
                    }
                    return null;
                  },
                  obscureText: x,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    fillColor: Colors.red,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          x = !x;
                        });
                      },
                      icon: Icon(x
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                decoration: BoxDecoration(
                boxShadow: [
                BoxShadow(
                color: Colors.red.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 9),
                ),
                ],
                borderRadius: BorderRadius.circular(8.0),),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {

                      send();

                      String email = emailtext.text;
                      String password = passwordtext.text;

                      signInWithEmailAndPassword(email, password);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                ),
              ),
              Text("I don't have an account"),
              TextButton(onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => signup()),
                );

              }, child: Text("Create Account",style: TextStyle(color: Colors.red),))
            ],
          ),
        ),
      ),
    );
  }
}