import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: isDarkMode ? Colors.black : Colors.white,
            expandedHeight: 50,
            title: const Text(
              "facebook",
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: isDarkMode ? Colors.grey : Colors.black,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isDarkMode = !isDarkMode;
                    });
                  },
                  icon: Icon(
                    Icons.camera_alt_rounded,
                    color: isDarkMode ? Colors.grey : Colors.black,
                  )),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            //#TextField
            Container(
              height: MediaQuery.of(context).size.height * 0.065,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_0.jpg"),
                    radius: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, bottom: 6),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 40,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        hintText: "What's on your mind?",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //#LivePhoto
            Container(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.video_call,
                              color: Colors.red,
                            )),
                        Text("Live", style: TextStyle(color: isDarkMode ? Colors.grey : Colors.black),),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.07,
                        ),
                        Container(
                          height: 20,
                          decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1, color: Colors.grey))),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.photo,
                              color: Colors.green,
                            )),
                        Text("Photo", style: TextStyle(color: isDarkMode ? Colors.grey : Colors.black),),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        Container(
                          height: 20,
                          decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1, color: Colors.grey))),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.location_on,
                              color: Colors.red,
                            )),
                        Text("Check in", style: TextStyle(color: isDarkMode ? Colors.grey : Colors.black),)
                      ],
                    ),
                  )),
                ],
              ),
            ),

            Container(
              color: isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300,
              height: 10,
            ),

            //#Story
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.22,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  story(
                      bcImage: "assets/images/bc_img_0.jpg",
                      avImage: "assets/images/profile_img_1.jpeg",
                      fullName: "Ben\nParker"),
                  story(
                      bcImage: "assets/images/bc_img_1.jpg",
                      avImage: "assets/images/profile_img_2.jpg",
                      fullName: "Michael\nDam"),
                  story(
                      bcImage: "assets/images/bc_img_2.jpg",
                      avImage: "assets/images/profile_img_3.png",
                      fullName: "Michael\nHenry"),
                  story(
                      bcImage: "assets/images/bc_img_3.jpg",
                      avImage: "assets/images/profile_img_4.jpg",
                      fullName: "Ben\nParker"),
                  story(
                      bcImage: "assets/images/bc_img_4.jpg",
                      avImage: "assets/images/profile_img_5.jpg",
                      fullName: "Michael\nDam"),
                ],
              ),
            ),

            Container(
              color: isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300,
              height: 7,
            ),

            //#Post
            posts(
                avImage: "assets/images/profile_img_1.jpeg",
                fullName: "Ben Parker",
                lastSeen: "1 hr ago",
                text:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                bcImage: "assets/images/bc_img_2.jpg",
                likes: "2.5K",
                commits: "400"),

                Container(
                  color: isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300,
                  height: 7,
                ),

                //#Post
                posts(
                    avImage: "assets/images/profile_img_4.jpg",
                    fullName: "Ben Parker",
                    lastSeen: "3 hr ago",
                    text:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    bcImage: "assets/images/bc_img_4.jpg",
                    likes: "2.5K",
                    commits: "400"),
          ])),
        ],
      ),
    );
  }

  Widget story({required bcImage, required avImage, required fullName}) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(bcImage),
            fit: BoxFit.cover,
          )),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(avImage),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: Text(
                  fullName,
                  style: TextStyle(color: isDarkMode ? Colors.grey.shade300 : Colors.white, fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget posts({
    required avImage,
    required fullName,
    required lastSeen,
    required text,
    required bcImage,
    required likes,
    required commits,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.648,
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(avImage),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        fullName,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold, color: isDarkMode ? Colors.grey : Colors.black),
                      ),
                      Text(
                        lastSeen,
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.grey,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              text,
              style: TextStyle(color: isDarkMode ? Colors.grey : Colors.black87),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              bcImage,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Stack(
              children: [
                Container(
                  child: const Icon(
                    Icons.thumb_up_alt,
                    size: 12,
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Container(
                    child: const Icon(
                      Icons.favorite,
                      size: 12,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Container(
                  child: Text(likes, style: const TextStyle(color: Colors.grey),),
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: const EdgeInsets.only(left: 36),
                ),
                Align(
                  child: Text(
                    commits + "commits",
                    style: const TextStyle(color: Colors.grey),
                  ),
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ),

          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(width: 1, color: Colors.grey))
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height * 0.045,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.thumb_up_alt, color: Colors.blue, size: 20,),
                        const SizedBox(width: 5,),
                        Text("Like", style: TextStyle(color: isDarkMode ? Colors.grey : Colors.black),)
                      ],
                    )
                ),
                Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.mode_comment_outlined, color: Colors.grey, size: 20,),
                        const SizedBox(width: 5,),
                        Text("Comment", style: TextStyle(color: isDarkMode ? Colors.grey : Colors.black),)
                      ],
                    )
                ),
                Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.share, color: Colors.grey, size: 20,),
                        const SizedBox(width: 5,),
                        Text("Share", style: TextStyle(color: isDarkMode ? Colors.grey : Colors.black),)
                      ],
                    )
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
                border: Border(top: BorderSide(width: 1, color: Colors.grey))
            ),
          ),
        ],
      ),
    );
  }
}
