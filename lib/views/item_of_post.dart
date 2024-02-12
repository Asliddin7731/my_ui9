
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ItemOfPost extends StatelessWidget {
  const ItemOfPost({super.key, required this.raqam, required this.image});

  final int raqam;
  final String image;

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
                    child: const Text(
                      'Ummatov Asliddin Dasturchi',
                      softWrap: false,
                      style: TextStyle(
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
                    IconButton(
                      icon: const Icon(FeatherIcons.messageCircle),
                      onPressed: (){},
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
        
        Text(raqam.toString()+' like',textAlign: TextAlign.start,)
      ],
    );
  }
}
