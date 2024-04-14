import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp_classic/pages/landingPage.dart';

class Slashscreen extends StatefulWidget {
  const Slashscreen({super.key});

  @override
  State<Slashscreen> createState() => _SlashscreenState();
}

class _SlashscreenState extends State<Slashscreen> {
  
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), ()=>
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>
    const Landingpage()
    ))
    );
  }
  @override
  Widget build(BuildContext context) {
    final double screenSizeh = MediaQuery.of(context).size.height;
    final double screenSizew = MediaQuery.of(context).size.width;
    const String studioName = "by Epic kiwi Studios";
    const String appName = "_Notes";
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: screenSizeh,
        width: screenSizew,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height:250),
            Image.asset("assets/notes.png",height: 100,),
            const SizedBox(height: 11,),
            Text(appName,style: TextStyle(fontFamily: "Orbitron",fontSize: 29,color: Colors.grey.shade800),),
            const SizedBox(height: 290),
            Text(studioName,style: TextStyle(fontFamily: "Orbitron",fontSize:15,color: Colors.grey.shade700),),

            // Text(header,style: GoogleFonts.allertaStencil(fontSize: 20,color: Colors.orange)),
            // // 
            // Text(subheader,style: GoogleFonts.allertaStencil(fontSize: 15,color: Colors.orange),),
            // SizedBox(height: 180),
            // LinearProgressIndicator(
            //   minHeight: 13,
            //   backgroundColor: Colors.grey,
            //   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            // )
          ],
        ),
      ),
    );
  }
}