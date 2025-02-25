import 'package:flutter/material.dart';

class Shortsscreen extends StatelessWidget {
  final List<String> backgrounds = [
    'assets/shorts.png',
    'assets/short2.png',
    'assets/shorts3.png',
    'assets/shorts4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Shorts", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white, size: 30),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: backgrounds.length,
            itemBuilder: (context, index) {
              return Image.asset(
                backgrounds[index],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              );
            },
          ),

          // Top Horizontal Icons
          Positioned(
            top: 60,
            left: 20,
            right: 20,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  topIcon(Icons.subscriptions, "Subscriptions"),
                  SizedBox(width: 15),
                  topIcon(Icons.live_tv, "Live"),
                  SizedBox(width: 15),
                  topIcon(Icons.local_fire_department, "Trends"),
                  SizedBox(width: 15),
                  topIcon(Icons.shopping_bag_outlined, "Shopping"),
                ],
              ),
            ),
          ),

          // Right Side Icons
          Positioned(
            right: 15,
            bottom: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                sideIcon(
                  icon: Icons.thumb_up,
                  label: "1.4M",
                  context: context,
                  snackBarMessage: "You liked this!",
                ),
                SizedBox(height: 15),
                sideIcon(
                  icon: Icons.thumb_down,
                  label: "Dislike",
                  context: context,
                  snackBarMessage: "You disliked this!",
                ),
                SizedBox(height: 15),
                sideIcon(
                  icon: Icons.comment,
                  label: "4,095",
                  context: context,
                  snackBarMessage: "Comments opened",
                ),
                SizedBox(height: 15),
                sideIcon(
                  icon: Icons.share,
                  label: "19K",
                  context: context,
                  snackBarMessage: "Shared successfully!",
                ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white, size: 30),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),

          // Bottom Content
          Positioned(
            bottom: 25,
            left: 15,
            right: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Search "how to water plants"',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(Icons.person, color: Colors.black),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "@ThePlantiBoys",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text("Subscribe", style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "He tells me when he's thirsty... 🥰",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.music_note, color: Colors.white, size: 20),
                    Text("School Rooftop (Bird Sounds) • hisohkah",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sideIcon({
    required BuildContext context,
    required IconData icon,
    required String label,
    required String snackBarMessage,
  }) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.white, size: 30),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(snackBarMessage),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }

  Widget topIcon(IconData icon, String text) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(icon, color: Colors.white, size: 22),
              ),
              Text(text, style: TextStyle(color: Colors.white, fontSize: 10)),
            ],
          ),
        ),
      ],
    );
  }
}
