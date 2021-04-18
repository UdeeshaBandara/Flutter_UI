import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /*1*/
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen hi ',
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
        //   Icon(
        //     Icons.star,
        //     color: Colors.red[500],
        //   ),
        //   Text('41'),
        Expanded(
          flex: 3,
          child: Container(
            child: Image.asset("images/icon.png"),
          ),
        )
      ],
    ),
  );

// Color color = Theme.of(context).primaryColor;
  Widget test = Container(
      alignment: Alignment.centerRight,
      color: Colors.greenAccent.withAlpha(250),
      child: Container(
        color: Colors.blue,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child:
                      Container(color: Colors.transparent, child: Text("Hi")))
            ]),
      ));
  Widget buttonSection = Container(
    margin: EdgeInsets.all(10),
    color: Colors.redAccent,
    child: Row(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Container(
        //     color: Colors.greenAccent,
        //     child: _buildButtonColumn(Colors.blueAccent, Icons.call, 'CALL')),
        // _buildButtonColumn(Colors.blueAccent, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.blueAccent, Icons.share, 'SHARE'),
      ],
    ),
  );
  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
          // ListView(
          //   children: [
          //     Image.asset("images/data.png",
          //         width: MediaQuery.of(context).size.width,
          //         height: 300,
          //         fit: BoxFit.cover),
          //     titleSection,

          //   ],
          test,
      //   ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: color),
      Text(label),
    ],
  );
}
