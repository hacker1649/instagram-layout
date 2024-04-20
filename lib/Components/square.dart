import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_ui/Classes/post.dart';
import 'package:dotted_border/dotted_border.dart';

class MySquare extends StatelessWidget {
  final Post post;
  const MySquare({super.key, required this.post,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.0,right: 0.0,top: 0.0,bottom: 10.0,),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              leading: DottedBorder(
                color: Color.fromARGB(255, 183, 11, 65),
                strokeWidth: 2,
                borderType: BorderType.Circle,
                dashPattern: const [1,0],
                child: ClipOval(child: Image.asset(post.avatar,fit: BoxFit.cover,width: 30,height: 30,),),
              ),
              title: Text(post.username,style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold,fontSize: 14,),),
              subtitle: Text(post.location,style: GoogleFonts.ubuntu(fontSize: 13,),),
              trailing: Icon(Icons.more_vert_rounded,color: Colors.black,),
            ),
            SizedBox(child: Image.asset(post.img,fit: BoxFit.cover,),),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 0.0,bottom: 0.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/icons/like.png',color: Colors.black,width: 25,height: 25,),
                      SizedBox(width: 10,),
                      Image.asset('assets/icons/bubble-chat.png',color: Colors.black,width: 25,height: 25,),
                      SizedBox(width: 10,),
                      Image.asset('assets/icons/send.png',color: Colors.black,width: 25,height: 25,),
                    ],
                  ),
                  Image.asset('assets/icons/bookmark.png',color: Colors.black,width: 25,height: 25,),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 10.0,bottom: 0.0,),
              child: Text('2 likes',style: GoogleFonts.ubuntu(fontWeight: FontWeight.w700,fontSize: 13,),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 5.0,bottom: 0.0,),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: [
                    TextSpan(text: post.username,style: GoogleFonts.ubuntu(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13,),),
                    TextSpan(text: ' ${post.text}',style: GoogleFonts.ubuntu(color: Colors.black,fontSize: 13,),),
                  ]
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 5.0,bottom: 0.0,),
              child: Text('View all ${post.messages} comments',style: GoogleFonts.ubuntu(color: Colors.grey[600],fontSize: 13,),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 5.0,bottom: 0.0,),
              child: Text('1 hour ago',style: GoogleFonts.ubuntu(color: Colors.grey[600],fontSize: 12,),),
            ),
          ],
        ),
      ),
    );
  }
}
