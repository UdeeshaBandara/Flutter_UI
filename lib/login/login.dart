import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget titleSection = Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
    padding: const EdgeInsets.all(32),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        /*1*/
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),

        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
    ),
  );

  Widget buttonSection = Container(
    child: Row(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          titleSection,
          titleSection,
          titleSection,
          titleSection,
          titleSection,
          titleSection,
        ],
      ),
    ));
  }
}
