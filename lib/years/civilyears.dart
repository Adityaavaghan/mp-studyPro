import 'package:book_app/screens/Civilhome_screen.dart';
import 'package:book_app/screens/Echome_screen.dart';
import 'package:book_app/screens/fourthisehome_screen.dart';
import 'package:book_app/screens/home_screen.dart';
import 'package:book_app/screens/thirdyrise_screen.dart';
import 'package:flutter/material.dart';

class CivilYears extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Civil'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            minimum: EdgeInsets.all(6),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select Year',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Civilhome_screen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(55),
                      decoration: BoxDecoration(
                          color: Color(0xFFB36161),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: Text(
                          'Second Year',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return thirdisehome_screen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(55),
                      decoration: BoxDecoration(
                          color: Color(0xFFB36161),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: Text(
                          'Third Year',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return fourthisehome_screen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(55),
                      decoration: BoxDecoration(
                          color: Color(0xFFB36161),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: Text(
                          'Fourth Year',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    padding: EdgeInsets.all(55),
                    decoration: BoxDecoration(
                        color: Color(0xFFB36161),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Text(
                        'Projects',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
