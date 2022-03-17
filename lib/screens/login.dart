import 'package:bongalo/screens/verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final phoneNumberController = TextEditingController();
  bool submit = false;
  @override
  void initState() {
    super.initState();
    phoneNumberController.addListener(() {
      setState(() {
        submit = phoneNumberController.text.length == 9;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[800].withOpacity(0.2),
      body: Container(

          // color: Colors.lightBlue[800].withOpacity(0.2),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bac.JPG"),
                  fit: BoxFit.cover),
              color: Colors.white,
              backgroundBlendMode: BlendMode.modulate),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 60),
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: phoneNumberController,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: CountryCodePicker(
                              onChanged: print,
                              initialSelection: 'NG',
                              favorite: ['+234', 'FR'],
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                              alignLeft: false,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: '829278373'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue[500],
                            minimumSize: const Size.fromHeight(50)),
                        child: Text("Continue",
                            style: TextStyle(color: Colors.grey[200])),
                        onPressed: submit
                            ? () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Verify()))
                            : null,
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child:
                        Text("Or", style: TextStyle(color: Colors.grey[200])),
                  ),
                  SizedBox(
                    width: 380,
                    height: 50,
                    child: SignInButton(
                      Buttons.Apple,
                      text: 'Continue with Apple',
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 380,
                    height: 50,
                    child: SignInButton(
                      Buttons.Google,
                      text: 'Continue with Google',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
