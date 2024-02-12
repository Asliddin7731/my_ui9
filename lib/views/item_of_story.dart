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
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 7),
                decoration: const BoxDecoration(
                  color: Colors.orange,
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
            ],
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
