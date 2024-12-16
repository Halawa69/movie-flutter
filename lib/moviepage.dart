import 'package:flutter/material.dart';

import 'customenavbar.dart';

class Moviepage extends StatefulWidget {
  final String movie;
  const Moviepage({Key? key, required this.movie}) : super(key: key);

  @override
  State<Moviepage> createState() => _MoviepageState();
}

class _MoviepageState extends State<Moviepage> {
  final List<String> movies = [
    "Adam Driver",
    "Alaa El Din",
    "Beautiful mind",
    "Cinderalla",
    "Exception 2",
    "Swallwoed",
    "Thor love thunder",
    "US",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.4,
              child: Image.asset(
                "assets/${widget.movie}.jpg",
                height: 280,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.favorite_outline,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey.withOpacity(0.5),
                                    blurRadius: 8,
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/${widget.movie}.jpg",
                                  height: 250,
                                  width: 180,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 30, top: 25),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.red,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 8,
                                  )
                                ],
                                ),
                              child: const Icon(
                                Icons.play_arrow,
                                size: 45,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildActionIcon(Icons.add),
                          _buildActionIcon(Icons.favorite_border_outlined),
                          _buildActionIcon(Icons.download),
                          _buildActionIcon(Icons.share),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        widget.movie,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "This is a sample description of the movie. "
                        "You can write the movie's full description here.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recommended",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: movies.map((movie) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/${movie}.jpg",
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Stack(
                        children: [
                          Customnavbar(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionIcon(IconData icon) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
          )
        ],
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
