import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text(
            'Ninja ID Card',
        style: TextStyle(
          color: Colors.blue[400],
          fontFamily: 'Lora',
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/splash.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.blueGrey[200],
            ),
            Text(
                'NAME',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 18.5,
              ),
            ),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 18.0,
              ),
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              children: [
                Icon(Icons.mail,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Text(
                    'chun.li@thenetninja.co.uk',
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

