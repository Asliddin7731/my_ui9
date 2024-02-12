import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemOfPost extends StatelessWidget {
  const ItemOfPost({super.key, required this.image, required this.name, required this.like});

  final int like;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Avatar
                  Container(
                    margin: const EdgeInsets.only(right: 7),
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        colors: [
                          Colors.orangeAccent.withOpacity(0.9),
                          Colors.deepOrangeAccent.withOpacity(0.7),
                          Colors.purpleAccent.withOpacity(0.6),
                          Colors.purple.withOpacity(0.8),
                        ],
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // Full name
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2,
                    child: Text(name,
                      softWrap: false,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.fade
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: (){},
              )
            ],
          ),
        ),
        Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(FeatherIcons.heart),
                      onPressed: (){},
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: IconButton(
                        icon: SvgPicture.asset('assets/images/icon-comentaria.svg',),
                        onPressed: (){},
                      ),
                    ),
                    IconButton(
                      icon: const Icon(FeatherIcons.send),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: (){},
              ),
            ],
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.only(left:15,bottom: 10),
          child: Text('$like likes',
            style: const TextStyle(
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ],
    );
  }
}
