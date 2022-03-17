import 'package:flutter/material.dart';

class Congratulations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              Card(
                  color: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/success.jpg',
                          height: 250,
                          width: 250,
                        ),
                        Text(
                          "Congratulations",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "You have successfully created an account\n A stress-free life lies ahead of you.",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 50),
              SizedBox(
                width: 220.0,
                height: 50,
                child: RaisedButton(
                  color: Colors.lightBlue[500],
                  child: Text("Continue",
                      style: TextStyle(color: Colors.grey[200], fontSize: 20)),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ));
  }
}
