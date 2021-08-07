import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/carousel_item_model.dart';
import 'package:flutter_app/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

List<CarouselItemModel> carouselItems = List.generate(5, (index) =>
CarouselItemModel(text: Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        "PROGRAMMER",
         style: GoogleFonts.oswald(
           color: kPrimaryColor,
           fontWeight: FontWeight.w900,
           fontSize: 16.0,
         ),
      ),
      SizedBox(
        height: 18.0,
      ),
      Text(
        "HASAN\nRAZA\nABEDI",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.30,
            ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        "Full Stack Developer",
        style: TextStyle(
          color: kCaptionColor,
          fontSize: 15.0,
          height: 1.0,
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Container(
        child: Wrap(
          children: [
            Text("Veteran in Programming >>> \t",
              style: TextStyle(
                color: kCaptionColor,
                fontSize: 15.0,
                height: 1.5,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text("Got a Project?    Let's Talk",
                style: TextStyle(
                  height: 1.5,
                  color: Colors.white,
                  fontSize: 15.0,
                ),),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 25.0,
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 48.0,
          padding: EdgeInsets.symmetric(
            horizontal: 28.0,
          ),
          child: TextButton(
            onPressed: () {  },
            child: Text("Get Started",
            style: TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),)
          ),
        )
      )
    ],
  ),
),
    image: Container(
      child: Image.asset('assets/images/pic.png',
   fit: BoxFit.contain,
    ),
    ),
),
);