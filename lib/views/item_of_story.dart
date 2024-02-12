import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemOfStory extends StatelessWidget {
  const ItemOfStory({super.key, required this.image, required this.name});

  final String image;
  final String name;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                colors: [
                  Colors.orangeAccent.withOpacity(0.9),
                  Colors.deepOrangeAccent.withOpacity(0.7),
                  Colors.purpleAccent.withOpacity(0.6),
                  Colors.purple.withOpacity(0.8),

                ]
              ),
              shape: BoxShape.circle
            ),
            child: Container(
              margin: const EdgeInsets.all(2.5),
              decoration: BoxDecoration(
                color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(40)
                // color: Colors.yellowAccent
              ),
              height: 80,
              width: 80,
              child: Container(
                margin: const EdgeInsets.all(3),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          flex: 1,
            child: SizedBox(
              width: 80,
                child: Text(name,style: const TextStyle(fontSize: 12, height: 1),
                  overflow: TextOverflow.ellipsis,
                ),
            ),
        )
      ],
    );
  }
}

class MyStory extends StatelessWidget {
  const MyStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
