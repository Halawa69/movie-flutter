import 'package:flutter/material.dart';

import 'MoviePage.dart';
import 'customenavbar.dart';

class Homepage extends StatefulWidget {
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

  final List<String> _movie = [
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
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1a1c25),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Mazen",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "What to Watch?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/WhatsApp Image 2023-12-01 at 14.17.25_7d8b207e.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xff292b37),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 30,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SectionHeader(title: "Upcoming Movies"),
            HorizontalMovieList(widget._movie),
            const SizedBox(height: 20),
            const SectionHeader(title: "New Movies"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: widget.movies.map((movie) {
                  return InkWell(
                    onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Moviepage(movie: movie),
                                ),
                              );
                            },
                    child: Container(
                      width: 190,
                      height: 330,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xff292b37),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff292b37).withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/$movie.jpg",
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "Action/Adventure",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white54,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(
                                          255, 255, 235, 59),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "8.5",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20,),
            Customnavbar(),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const Text(
            "See All",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalMovieList extends StatelessWidget {
  final List<String> movies;

  const HorizontalMovieList(this.movies);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies.map((movie) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/$movie.jpg",
                height: 250,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
