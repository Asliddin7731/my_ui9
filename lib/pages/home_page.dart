import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_ui9/views/item_of_story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        // elevation: 0,
        // type: BottomNavigationBarType.fixed,
        height: 65,
        border: Border.all(style: BorderStyle.none),
        items: [
          const BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home_filled, size: 30,color: Colors.black87,)
          ),
          const BottomNavigationBarItem(
            label: '',
            icon: Icon(FeatherIcons.search, size: 25, color: Colors.black87,)
          ),
          const BottomNavigationBarItem(
            label: '',
            icon: Icon(CupertinoIcons.plus_app, size: 25,color: Colors.black87,)
          ),
          const BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.video_collection_sharp, size: 25, color: Colors.black87,)
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              height: 25,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_image1.jpg')
                )
              ),
            )
          ),
        ],
      ),
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.white,

      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Instagram', style: GoogleFonts.allura(fontSize: 32, fontWeight: FontWeight.w900),),
              surfaceTintColor: Colors.white,
              backgroundColor: Colors.white,
              floating: true,
              actions: [
                IconButton(
                  onPressed: (){},
                  icon: const Icon(CupertinoIcons.heart, color: Colors.black87, size: 25,),
                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(CupertinoIcons.chat_bubble_text, color: Colors.black87, size: 25,),
                ),
                const SizedBox( width: 5),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            height: 125,
                            // color: Colors.red,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                const SizedBox(width: 15,),

                                //Your story
                                Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade200),
                                            shape: BoxShape.circle
                                            // color: Colors.yellowAccent
                                          ),
                                          height: 80,
                                          width: 80,
                                          child: Container(
                                            margin: const EdgeInsets.all(4),
                                            clipBehavior: Clip.hardEdge,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage('assets/images/ic_image1.jpg'),
                                                fit: BoxFit.cover
                                              ),
                                            ),
                                          ),
                                        ),

                                        //Icon_Plus
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          width: 80,
                                          height: 80,
                                          child: Container(
                                            padding: const EdgeInsets.all(1),
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.only(right: 8,bottom: 3),
                                            height: 23,
                                            width: 23,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white,width: 1.8),
                                                shape: BoxShape.circle,
                                                color:Colors.blue
                                            ),
                                            child: const Icon(CupertinoIcons.plus,color: Colors.white,size: 13,),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    const Text('Your story',style: TextStyle(fontSize: 12, height: 1),)
                                  ],
                                ),
                                const ItemOfStory(name: 'shahob_tursunov',image: 'assets/images/ic_image2.jpg',),
                                const ItemOfStory(name: "asadbek_ro'ziyev",image: 'assets/images/ic_image3.jpeg',),
                                const ItemOfStory(name: 'islom_rizayev',image: 'assets/images/ic_image4.jpg',),
                                const ItemOfStory(name: 'aizibek_asadov',image: 'assets/images/ic_image2.jpg',),
                                const ItemOfStory(name: 'muhriddi_nummatov',image: 'assets/images/ic_image3.jpeg',),
                              ],
                            ),
                          ),
                          Container(
                            height: 700,
                            color: Colors.orangeAccent,
                          )
                        ],
                      );
                      },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
