import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/Classes/story.dart';
import 'package:instagram_ui/Classes/post.dart';
import 'package:instagram_ui/Components/circle.dart';
import 'package:instagram_ui/Components/square.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Story> getStories=[
    Story(avatar: 'assets/avatar/viki3.png', username: 'Your Story',),
    Story(avatar: 'assets/avatar/v_ben.jpg', username: 'v_ben',),
    Story(avatar: 'assets/avatar/k_sarah.jpg', username: 'k_sarah',),
    Story(avatar: 'assets/avatar/l_brooke.jpg', username: 'l_brooke',),
    Story(avatar: 'assets/avatar/_haydn.jpg', username: '_haydn',),
    Story(avatar: 'assets/avatar/w_rick.jpg', username: 'w_rick',),
    Story(avatar: 'assets/avatar/the_sushi.jpg', username: 'the_sushi',),
    Story(avatar: 'assets/avatar/charles.jpg', username: 'charles',),
    Story(avatar: 'assets/avatar/luis_h.jpg', username: 'luis_h',),
    Story(avatar: 'assets/avatar/m_vince.jpg', username: 'm_vince',),
  ];
  List<Post> getPosts=[
    Post(
      avatar: 'assets/avatar/the_sushi.jpg',
      username: 'the_sushi',
      location: 'United States',
      img: 'assets/img/334.png',
      text: 'The secret of your success is determined by your daily agenda. It all comes down to what you do today.',
      messages: 13,
    ),
    Post(
      avatar: 'assets/avatar/v_ben.jpg',
      username: 'v_ben',
      location: 'Sponsored',
      img: 'assets/img/333.png',
      text: 'You can\'t cross the sea merely by standing and staring at the water.',
      messages: 45,
    ),
    Post(
      avatar: 'assets/avatar/luis_h.jpg',
      username: 'luis_h',
      location: 'New York City. N.Y.',
      img: 'assets/img/123.png',
      text: 'The little things in life matter, If you don\'t believe in yourself, who will?',
      messages: 300,
    ),
    Post(
      avatar: 'assets/avatar/w_rick.jpg',
      username: 'w_rick',
      location: 'Original Audio',
      img: 'assets/img/777.png',
      text: 'The difference between greatness and mediocrity is often how an individual views a mistake. My key to dealing with stress is simple: just stay cool and stay focused.',
      messages: 1034,
    ),
    Post(
      avatar: 'assets/avatar/m_vince.jpg',
      username: 'm_vince',
      location: 'Sponsored',
      img: 'assets/img/876.png',
      text: 'If you want the opportunity to knock, it\'s time to build a door',
      messages: 76,
    ),
    Post(
      avatar: 'assets/avatar/charles.jpg',
      username: 'charles',
      location: 'Sponsored',
      img: 'assets/img/www.png',
      text: 'People who succeed at the highest level are not lucky. They\'re doing something differently than everyone else.',
      messages: 107,
    ),
    Post(
      avatar: 'assets/avatar/_haydn.jpg',
      username: '_haydn',
      location: 'Sponsored',
      img: 'assets/img/000.png',
      text: 'Inspiration comes from within yourself. One has to be positive. When you\'re positive, good things happen.',
      messages: 44,
    ),
    Post(
      avatar: 'assets/avatar/dash.jpg',
      username: '___dash',
      location: 'Duncan Laurence - Arcade',
      img: 'assets/img/888.png',
      text: 'What lies behind us and what lies before us are tiny matters compared to what lies within us.',
      messages: 50,
    ),
    Post(
      avatar: 'assets/avatar/l_brooke.jpg',
      username: 'l_brooke',
      location: 'Sponsored',
      img: 'assets/img/555.png',
      text: 'The most difficult part of life isn\'t taking risks but not taking risks in fear of failure.',
      messages: 3,
    ),
    Post(
      avatar: 'assets/avatar/k_sarah.jpg',
      username: 'k_sarah',
      location: 'Karachi, Pakistan',
      img: 'assets/img/776.png',
      text: 'The path to success is to take massive, determined action. Identify your problems, but give your power and energy to solutions. If you are confident you are beautiful.',
      messages: 2000,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Instagram', style: GoogleFonts.ubuntu(fontWeight: FontWeight.w900, fontSize: 20, letterSpacing: 0.0,),),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            Image.asset('assets/icons/messenger.png',color: Colors.black,width: 25,height: 25,),
            SizedBox(width: 10,),
          ],
        ),
        body: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 115,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: getStories.length,
                    itemBuilder: (context,index) => MyCircle(story: getStories[index]),
                  ),
                ),
                Divider(color: Colors.grey[200],thickness: 1.0,height: 0,),
                Flexible(
                  child: ListView.builder(
                    itemCount: getPosts.length,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context,index) => MySquare(post: getPosts[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Widget bottomNavigationBar(){
    return Container(
      color: Colors.transparent,
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkResponse(
            highlightShape: BoxShape.circle,
            highlightColor: Colors.grey[900],
            radius: 20.0,
            onTap: () {},
            child: SizedBox(child: Image.asset('assets/icons/hut.png',color: Colors.black,width: 25,height: 25,),),
          ),
          InkResponse(
            highlightShape: BoxShape.circle,
            highlightColor: Colors.grey[900],
            radius: 20.0,
            onTap: () {},
            child: SizedBox(child: Image.asset('assets/icons/search.png',color: Colors.black,width: 25,height: 25,),),
          ),
          InkResponse(
            highlightShape: BoxShape.circle,
            highlightColor: Colors.grey[900],
            radius: 20.0,
            onTap: () {},
            child: SizedBox(child: Image.asset('assets/icons/more.png',color: Colors.black,width: 25,height: 25,),),
          ),
          InkResponse(
            highlightShape: BoxShape.circle,
            highlightColor: Colors.grey[900],
            radius: 20.0,
            onTap: () {},
            child: SizedBox(child: Image.asset('assets/icons/like.png',color: Colors.black,width: 28,height: 28,),),
          ),
          InkResponse(
            highlightShape: BoxShape.circle,
            highlightColor: Colors.grey[900],
            radius: 20.0,
            onTap: () {},
            child: DottedBorder(
              color: Colors.grey,
              strokeWidth: 2,
              borderType: BorderType.Circle,
              dashPattern: const [1,0],
              child: ClipOval(child: Image.asset('assets/avatar/viki3.png',fit: BoxFit.cover,width: 25,height: 25,),),
            ),
          ),
        ],
      ),
    );
  }
}
