import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Portfolio(),
    )
  );
}

class Portfolio extends StatefulWidget {
  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  int currentSemester = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Portfolios"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(onPressed:() {
        setState(() {
          currentSemester+=1;
        });
      },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/saranImage.jpeg"),
                radius: 100,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 2.0
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Saravanan Gowthaman",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30),

            const Text(
              "SCHOOL",
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 2.0
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Northeastern University",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10,),
                Text(
                  "gowthaman.s@northeastern.edu",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),

              ],
            ),
            const SizedBox(height: 30),

            const Text(
              "CURRENT SEMESTER",
              style: TextStyle(
                  color: Colors.white70,
                  letterSpacing: 2.0
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "$currentSemester",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
            ),

          ],
        ),
      )
      ,
    );
  }
}

