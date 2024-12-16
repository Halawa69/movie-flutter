import 'package:flutter/material.dart';
import 'package:sampleproject/discover.dart';

class Customnavbar extends StatefulWidget {
  const Customnavbar({super.key});

  @override
  State<Customnavbar> createState() => _CustomnavbarState();
}

class _CustomnavbarState extends State<Customnavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          color: Color(0xff292b37),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
                child: const Icon(
                  Icons.home_outlined,
                  color: Colors.white54,
                  size: 35,
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  Descover(),
                      ),
                    );
                  },
                child: const Icon(
                  Icons.category_outlined,
                  color: Colors.white54,
                  size: 35,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white54,
                  size: 35,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.person_outline,
                  color: Colors.white54,
                  size: 35,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}