import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/constants.dart';
import 'package:flutter_app/utils/screen_helper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CvSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(context, 1000.0),
        tablet: _buildUi(context, 760.0),
        mobile: _buildUi(context, MediaQuery
            .of(context)
            .size
            .width * .8),
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    return ResponsiveWrapper(
      maxWidth: width ,
      minWidth: width,
      defaultScale: false,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("BETTER DESIGN,\n BETTER EXPERIENCE",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    height: 1.8,
                    fontSize: 18.0,
                  ),
                ),

                GestureDetector(
                    onTap: () {},
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        "DOWNLOAD CV",
                        style: GoogleFonts.oswald(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),

              ],
            ),
            Expanded(
              child: SizedBox(
                height: 50.0,
              ),
            ),

            Container(
              child: LayoutBuilder(
                builder: (_context, constraints) {
                  return ResponsiveGridView.builder(
                      padding: EdgeInsets.all(0.0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      alignment: Alignment.topCenter,
                      gridDelegate: ResponsiveGridDelegate(
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0,
                        maxCrossAxisExtent: ScreenHelper.isTablet(context)
                            || ScreenHelper.isMobile(context) ?
                        constraints.maxWidth /2.0 :
                        250.0,
                        childAspectRatio: ScreenHelper.isDesktop(context) ?
                        1 : MediaQuery.of(context).size.aspectRatio * 1.5,
                      ),

                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.red,
                        );
                      },
                    itemCount: 4,
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}