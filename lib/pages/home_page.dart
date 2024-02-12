import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_ui9/core/constants/app_images.dart';
import 'package:my_ui9/views/item_of_post.dart';
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
                              children: const [
                                Gap(15),
                                MyStory(),
                                ItemOfStory(name: 'shahob_tursunov',image: 'assets/images/ic_image2.jpg',),
                                ItemOfStory(name: "asadbek_ro'ziyev",image: 'assets/images/ic_image3.jpeg',),
                                ItemOfStory(name: 'islom_rizayev',image: 'assets/images/ic_image4.jpg',),
                                ItemOfStory(name: 'aizibek_asadov',image: 'assets/images/ic_image2.jpg',),
                                ItemOfStory(name: 'muhriddi_nummatov',image: 'assets/images/ic_image3.jpeg',),
                              ],
                            ),
                          ),
                          const ItemOfPost(raqam: 5,image: AppImages.image1,),
                          const ItemOfPost(raqam: 5,image: AppImages.image2,),
                          const ItemOfPost(raqam: 5,image: AppImages.image3,),
                          const ItemOfPost(raqam: 5,image: AppImages.image4,),
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
