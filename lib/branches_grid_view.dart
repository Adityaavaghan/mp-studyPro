import 'package:book_app/years/civilyears.dart';
import 'package:book_app/years/eceyears.dart';
import 'package:book_app/years/eeeyears.dart';
import 'package:book_app/years/iseyears.dart';
import 'package:book_app/years/meyears.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      Items(
          title: "ISE/CSE",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return IseYears();
                },
              ),
            );
          },
          subtitle: "Software Engineering",
          event: "3 Pending Courses",
          img: "asset/calendar.png"),
      Items(
        title: "ME",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return MeYears();
              },
            ),
          );
        },
        subtitle: "Mechanical",
        event: "3 Pending Courses",
        img: "asset/food.png",
      ),
      Items(
        title: "ECE",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EceYears();
              },
            ),
          );
        },
        subtitle: "Electrical and Communication Engineering",
        event: "No courses",
        img: "asset/map.png",
      ),
      Items(
        title: "EEE",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EeeYears();
              },
            ),
          );
        },
        subtitle: "Electronics and Electrical Engineering",
        event: "2 Pending Courses",
        img: "asset/festival.png",
      ),
      Items(
        title: "CIVIL",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CivilYears();
              },
            ),
          );
        },
        subtitle: "Major/Minor Projects",
        event: "5 projecs available",
        img: "asset/todo.png",
      ),
      Items(
        title: "Placement Drives",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return IseYears();
              },
            ),
          );
        },
        subtitle: "Aptitude, codings",
        event: "2 languages",
        img: "asset/setting.png",
      )
    ];
    var color = 0xFFB36161;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return InkWell(
              onTap: data.onTap,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 42,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      data.subtitle,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.event,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  VoidCallback onTap;
  Items({this.title, this.subtitle, this.event, this.img, this.onTap});
}
