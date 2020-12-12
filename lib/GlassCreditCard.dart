import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class GlassCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(60, 32, 189, 0.91),
          Color.fromRGBO(60, 38, 223, 0.71)
        ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                    top: constraints.maxHeight * 0.3,
                    left: constraints.maxWidth * 0.00,
                    child: Container(
                      height: constraints.maxHeight * 0.15,
                      width: constraints.maxWidth * 0.35,
                      decoration: BoxDecoration(
                          gradient: RadialGradient(
                            colors: [
                              Color.fromRGBO(52, 64, 245, 1),
                              Color.fromRGBO(44, 130, 177, 1)
                            ],
                            radius: 0.7,
                          ),
                          //color: Colors.red,
                          shape: BoxShape.circle),
                    )),
                Positioned(
                    top: constraints.maxHeight * 0.55,
                    right: constraints.maxWidth * 0.00,
                    child: Container(
                      height: constraints.maxHeight * 0.15,
                      width: constraints.maxWidth * 0.35,
                      decoration: BoxDecoration(
                          gradient: RadialGradient(
                            colors: [
                              Colors.red,
                              Colors.pink.withOpacity(0.5)
                            ],
                            radius: 0.7,
                          ),
                         // color: Colors.red,
                          shape: BoxShape.circle),
                    )),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                      child: Container(
                        height: constraints.maxHeight * 0.3,
                        width: constraints.maxWidth * 0.85,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.2),
                                  Colors.white.withOpacity(0.05)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.08)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              right: 17,
                              child: Container(
                                height: constraints.maxHeight * 0.3 * 0.15,
                                width: constraints.maxWidth * 0.85 * 0.15,
                                child: Image.asset('assets/images/visa.png'),
                              ),
                            ),
                            Positioned(
                              top: constraints.maxHeight * 0.3 * 0.45,
                              left: 20,
                              child: Container(
                                height: constraints.maxHeight * 0.3 * 0.15,
                                width: constraints.maxWidth * 0.85 * 0.15,
                                child:
                                    Image.asset('assets/images/smartChip.png'),
                              ),
                            ),
                            Positioned(
                              top: constraints.maxHeight * 0.3 * 0.62,
                              left: 20,
                              child: Container(
                                height: constraints.maxHeight * 0.3 * 0.13,
                                width: constraints.maxWidth * 0.85 * 0.7,
                                //color: Colors.red,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "1234  5678  9012  3456",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 0.5,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: constraints.maxHeight * 0.3 * 0.82,
                              left: 20,
                              child: Container(
                                height: constraints.maxHeight * 0.3 * 0.07,
                                width: constraints.maxWidth * 0.85 * 0.4,
                                //color: Colors.red,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "AMAN TIWARI",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 1,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: constraints.maxHeight * 0.3 * 0.82,
                              left: constraints.maxWidth * 0.85 * 0.65,
                              child: Container(
                                height: constraints.maxHeight * 0.3 * 0.07,
                                width: constraints.maxWidth * 0.85 * 0.12,
                                //color: Colors.red,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "06/20",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 1,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: constraints.maxHeight * 0.3 * 0.82,
                              left: constraints.maxWidth * 0.85 * 0.8,
                              child: Container(
                                height: constraints.maxHeight * 0.3 * 0.07,
                                width: constraints.maxWidth * 0.85 * 0.12,
                                //color: Colors.red,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "08/26",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 1,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
