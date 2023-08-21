import 'package:flutter/material.dart';
import 'package:gitwidget/home_view.dart';
import 'package:google_fonts/google_fonts.dart';

class welcomeView extends StatefulWidget {
  const welcomeView({super.key});

  @override
  State<welcomeView> createState() => _welcomeViewState();
}

class _welcomeViewState extends State<welcomeView> {
  final List levels = [
    "Inactive",
    "Beginner",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'HARD ',
                    style: GoogleFonts.bebasNeue(
                        fontSize: 32, color: Colors.white, letterSpacing: 3),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'ELEMENT',
                    style: GoogleFonts.bebasNeue(
                        fontSize: 32,
                        color: Color(0xFF40d876),
                        letterSpacing: 3),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "About you",
                    style: GoogleFonts.lato(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "We want to know more about you,follow the next step \n to complete the inform",
                  style: GoogleFonts.lato(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    height: 226,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: levels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                          child: Container(
                            height: 226,
                            width: 195,
                            decoration: BoxDecoration(
                              color: Color(0xFF232441),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "I am",
                                  style: GoogleFonts.lato(
                                    fontSize: 30,
                                    color: Color(0xFF40d876),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Text(
                                  levels[index],
                                  style: GoogleFonts.lato(
                                    fontSize: 30,
                                    color: Color(0xFF40d876),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Ihave never trained",
                                  style: GoogleFonts.lato(
                                    fontSize: 30,
                                    color: Color(0xFF40d876),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, top: 40, bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " Skip Intro",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeView(),
                            ),
                          );
                        },
                        child: Container(
                          width: 139,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFF40D876),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Text(
                              "Next",
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
