import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Taskscreen extends StatefulWidget {
  Taskscreen({super.key});

  @override
  State<Taskscreen> createState() => _TaskscreenState();
}

class _TaskscreenState extends State<Taskscreen> {
  bool isFavorite = false;
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;
  bool isFavorite4 = false;
  bool isFavorite5 = false;
  bool isFavorite6 = false;
  bool isFavorite7 = false;
  var favcolor = true;

  var r = Icon(Icons.favorite);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                    width: double.infinity,
                    height: 240,
                    child: Image(
                      image: AssetImage("images/main.png"),
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    bottom: 30,
                    left: 20,
                    child: Text(
                      "Street clothes",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'metropolis.bold'),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Sale",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 210,
                ),
                Text("View all")
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Super summer sale",
                  style: TextStyle(color: Color(0xff9B9B9B))),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  width: 148,
                                  height: 184,
                                  child: Image.asset(
                                    "images/dress.png",
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topCenter,
                                  )),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                width: 40,
                                height: 24,
                                child: Center(
                                    child: Text(
                                  "-20%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(29)),
                              ),
                            ),
                            Positioned(
                                top: 163,
                                left: 108,
                                child: InkWell(
                                  child: CircleAvatar(
                                    child: Icon(
                                      isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dorothy Perkins",
                              style: TextStyle(color: Color(0xff9B9B9B)),
                            ),
                            Text("Evening Dress",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Row(
                              children: [
                                Text('\15\$',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        decoration:
                                            TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12\$",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  width: 148,
                                  height: 184,
                                  child: Image.asset(
                                    "images/sport.png",
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topCenter,
                                  )),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                width: 40,
                                height: 24,
                                child: Center(
                                    child: Text(
                                  "-20%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(29)),
                              ),
                            ),
                            Positioned(
                                top: 163,
                                left: 108,
                                child: InkWell(
                                  child: CircleAvatar(
                                    child: Icon(
                                      isFavorite1
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isFavorite1 = !isFavorite1;
                                    });
                                  },
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dorothy Perkins",
                              style: TextStyle(color: Color(0xff9B9B9B)),
                            ),
                            Text("Sport Dress",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Row(
                              children: [
                                Text('\22\$',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        decoration:
                                            TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "19\$",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  width: 148,
                                  height: 184,
                                  child: Image.asset(
                                    "images/dress2.png",
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topLeft,
                                  )),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                width: 40,
                                height: 24,
                                child: Center(
                                    child: Text(
                                  "-20%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(29)),
                              ),
                            ),
                            Positioned(
                                top: 163,
                                left: 108,
                                child: InkWell(
                                  child: CircleAvatar(
                                    child: Icon(
                                      isFavorite2
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isFavorite2 = !isFavorite2;
                                    });
                                  },
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dorothy Perkins",
                              style: TextStyle(color: Color(0xff9B9B9B)),
                            ),
                            Text("Fancy Dress",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Row(
                              children: [
                                Text('\15\$',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        decoration:
                                            TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12\$",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  width: 148,
                                  height: 184,
                                  child: Image.asset(
                                    "images/short.png",
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topCenter,
                                  )),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                width: 40,
                                height: 24,
                                child: Center(
                                    child: Text(
                                  "-20%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(29)),
                              ),
                            ),
                            Positioned(
                                top: 163,
                                left: 108,
                                child: InkWell(
                                  child: CircleAvatar(
                                    child: Icon(
                                      isFavorite3
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isFavorite3 = !isFavorite3;
                                    });
                                  },
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dorothy Perkins",
                              style: TextStyle(color: Color(0xff9B9B9B)),
                            ),
                            Text("Short Dress",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Row(
                              children: [
                                Text('\15\$',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        decoration:
                                            TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12\$",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "New",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 210,
                ),
                Text("View all")
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("You’ve never seen it before!",
                  style: TextStyle(color: Color(0xff9B9B9B))),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  width: 148,
                                  height: 184,
                                  child: Image.asset(
                                    "images/girl.png",
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topCenter,
                                  )),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                width: 40,
                                height: 24,
                                child: Center(
                                    child: Text(
                                      "New",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(29)),
                              ),
                            ),
                            Positioned(
                                top: 163,
                                left: 108,
                                child: InkWell(
                                  child: CircleAvatar(
                                    child: Icon(
                                      isFavorite4
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isFavorite4 = !isFavorite4;
                                    });
                                  },
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dorothy Perkins",
                              style: TextStyle(color: Color(0xff9B9B9B)),
                            ),
                            Text("Wrap Dress",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Row(
                              children: [
                                Text('\15\$',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        decoration:
                                        TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12\$",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  width: 148,
                                  height: 184,
                                  child: Image.asset(
                                    "images/man1.png",
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topCenter,
                                  )),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                width: 40,
                                height: 24,
                                child: Center(
                                    child: Text(
                                      "New",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(29)),
                              ),
                            ),
                            Positioned(
                                top: 163,
                                left: 108,
                                child: InkWell(
                                  child: CircleAvatar(
                                    child: Icon(
                                      isFavorite5
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isFavorite5 = !isFavorite5;
                                    });
                                  },
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dorothy Perkins",
                              style: TextStyle(color: Color(0xff9B9B9B)),
                            ),
                            Text("White Shirt",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Row(
                              children: [
                                Text('\15\$',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        decoration:
                                        TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12\$",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  width: 148,
                                  height: 184,
                                  child: Image.asset(
                                    "images/man2.jpg",
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topCenter,
                                  )),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                width: 40,
                                height: 24,
                                child: Center(
                                    child: Text(
                                      "New",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(29)),
                              ),
                            ),
                            Positioned(
                                top: 163,
                                left: 108,
                                child: InkWell(
                                  child: CircleAvatar(
                                    child: Icon(
                                      isFavorite6
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isFavorite6 = !isFavorite6;
                                    });
                                  },
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dorothy Perkins",
                              style: TextStyle(color: Color(0xff9B9B9B)),
                            ),
                            Text("Summer Shirt",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Row(
                              children: [
                                Text('\15\$',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        decoration:
                                        TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12\$",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  width: 148,
                                  height: 184,
                                  child: Image.asset(
                                    "images/man3.jpg",
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topCenter,
                                  )),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                width: 40,
                                height: 24,
                                child: Center(
                                    child: Text(
                                      "New",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(29)),
                              ),
                            ),
                            Positioned(
                                top: 163,
                                left: 108,
                                child: InkWell(
                                  child: CircleAvatar(
                                    child: Icon(
                                      isFavorite7
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isFavorite7 = !isFavorite7;
                                    });
                                  },
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dorothy Perkins",
                              style: TextStyle(color: Color(0xff9B9B9B)),
                            ),
                            Text("Oliver Shirt",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Row(
                              children: [
                                Text('\15\$',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        decoration:
                                        TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12\$",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
