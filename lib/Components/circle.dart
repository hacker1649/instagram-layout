import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_ui/Classes/story.dart';
import 'package:dotted_border/dotted_border.dart';

class MyCircle extends StatelessWidget {
  final Story story;
  const MyCircle({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0,bottom: 0.0,),
      child: SizedBox(
        child: Column(
          children: [
            DottedBorder(
              color: Color.fromARGB(255, 183, 11, 65),
              strokeWidth: 2.5,
              borderType: BorderType.Circle,
              dashPattern: const [1,0],
              child: ClipOval(child: Image.asset(story.avatar,fit: BoxFit.cover,width: 62,height: 62,),),
            ),
            Text(story.username,style: GoogleFonts.ubuntu(fontSize: 13,),),
          ],
        ),
      ),
    );
  }
}
