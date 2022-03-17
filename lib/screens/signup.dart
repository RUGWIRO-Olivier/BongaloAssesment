import 'package:flutter/material.dart';
import 'package:bongalo/screens/congratulations.dart';
import 'package:bongalo/screens/login.dart';

class SignUp extends StatefulWidget {
  // const SignUp({Key? key}) : super(key:key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final psdController = TextEditingController();
  bool submit = false;
  @override
  void initState() {
    super.initState();
    fullnameController.addListener(() {
      setState(() {
        submit = fullnameController.text.isNotEmpty;
        submit = emailController.text.isNotEmpty;
        submit = psdController.text.isNotEmpty;
      });
    });
    emailController.addListener(() {
      setState(() {
        submit = fullnameController.text.isNotEmpty;
        submit = emailController.text.isNotEmpty;
        submit = psdController.text.isNotEmpty;
      });
    });
    psdController.addListener(() {
      setState(() {
        submit = fullnameController.text.isNotEmpty;
        submit = emailController.text.isNotEmpty;
        submit = psdController.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Account',
              style: TextStyle(color: Colors.lightBlue[500])),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 40.0),
                  Text(
                    "Let\'s get to know you better",
                    // textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text("Full Name"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: fullnameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter full name'),
                    ),
                  ),
                  Text(
                    "Email",
                    textAlign: TextAlign.start,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter email address'),
                    ),
                  ),
                  Text("Password"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: psdController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Choose a Password'),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue[500],
                            minimumSize: const Size.fromHeight(50)),
                        child: Text("Create Account",
                            style: TextStyle(
                                color: Colors.grey[200], fontSize: 20)),
                        onPressed: submit
                            ? () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Congratulations()))
                            : null,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70, 0, 50, 0),
                    child: Center(
                      child: Row(
                        children: [
                          Text("Already have an account?"),
                          FlatButton(
                            child: Text("Login",
                                style: TextStyle(
                                    color: Colors.lightBlue[500],
                                    fontSize: 20)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ));
  }
}
