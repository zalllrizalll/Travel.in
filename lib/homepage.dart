import 'package:flutter/material.dart';
import 'package:travel_in/destinationpage.dart';
import 'package:travel_in/detailpage.dart';
import 'package:travel_in/maintenance_page.dart';
import 'package:travel_in/model/people_story.dart';
import 'package:travel_in/model/place_destination.dart';
import 'package:travel_in/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Image.asset('images/pura.avif', fit: BoxFit.cover),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      margin: const EdgeInsets.only(top: 290),
                      child: const Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning, Rizal Pratama',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    color: Colors.white),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Start New Adventure',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          MyCustomForm(),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  margin: const EdgeInsets.only(left: 12, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Stories",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const FriendStory(),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Top destination',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DestinationPage();
                          }));
                        },
                        child: const Text(
                          'See all',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
                const DestinationCard(),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white60,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu_rounded,
                          size: 28,
                          color: Colors.black54,
                        ),
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProfilePage();
                      }));
                    },
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.k_H-TfStc4DS_VwB_L2r_wHaHa?w=187&h=188&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomForm();
}

class _MyCustomForm extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Background color for text field
          borderRadius: BorderRadius.circular(20), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(0.1), // Shadow to lift the text field
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2), // Shadow position
            ),
          ],
        ),
        child: const TextField(
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.location_on_outlined, color: Colors.red),
            border: InputBorder.none, // Remove the outline
            hintText: 'Where are you going?',
            hintStyle: TextStyle(fontFamily: 'Poppins'),
            contentPadding: EdgeInsets.symmetric(
                vertical: 16, horizontal: 20), // Padding inside the field
          ),
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          final PlaceDestination place = destinationPlaceList[index];
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(place: place);
                }));
              },
              child: Card(
                color: Colors.white,
                elevation: 2,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: 160,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            place.image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          place.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          place.location,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}

class FriendStory extends StatelessWidget {
  const FriendStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: friendStoryList.length,
          itemBuilder: (context, index) {
            final PeopleStory friend = friendStoryList[index];
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MaintenancePage();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.green,
                              child: CircleAvatar(
                                radius: 32,
                                backgroundImage:
                                    NetworkImage(friend.imagePeople),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        friend.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ));
          }),
    );
  }
}
