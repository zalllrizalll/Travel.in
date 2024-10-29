import 'package:flutter/material.dart';
import 'package:travel_in/model/place_destination.dart';
import 'package:share_plus/share_plus.dart';

class DetailPage extends StatelessWidget {
  final PlaceDestination place;
  const DetailPage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Image.asset(
              place.image,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white60,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded,
                            color: Colors.black)),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white60,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz_rounded)),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  place.name,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 3.0),
                                Text(
                                  place.location,
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ],
                            ),
                            const BookmarkAndShare()
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ExpandableText(text: place.description),
                              const SizedBox(height: 16.0),
                              const Text(
                                'Overview',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8.0),
                              MonumentArchitecture(place: place),
                              const SizedBox(height: 16.0),
                              const Text(
                                'Special Meals',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8.0),
                              SpecialMeals(place: place),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
          textAlign: TextAlign.justify,
          maxLines: _isExpanded ? null : 4,
          overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Text(
            _isExpanded ? "Show less" : "Read more",
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class BookmarkAndShare extends StatefulWidget {
  const BookmarkAndShare({super.key});

  @override
  State<BookmarkAndShare> createState() => _BookmarkAndShareState();
}

class _BookmarkAndShareState extends State<BookmarkAndShare> {
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              _isBookmarked = !_isBookmarked;
            });
          },
          icon: Icon(_isBookmarked
              ? Icons.bookmark_rounded
              : Icons.bookmark_outline_rounded),
          color: Colors.amber,
          iconSize: 28,
        ),
        IconButton(
          onPressed: () {
            // Memunculkan modal bottom sheet untuk share
            showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                builder: (BuildContext context) {
                  return Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.share_outlined),
                        title: const Text('Share via...'),
                        onTap: () {
                          Share.share('Copy link on the clipboard');
                          Navigator.pop(
                              context); // Menutup bottom sheet setelah share
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.insert_link_rounded),
                        title: const Text('Copy link'),
                        onTap: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Link copied to clipboard!')));
                        },
                      )
                    ],
                  );
                });
          },
          icon: const Icon(Icons.share_outlined),
          iconSize: 28,
        ),
      ],
    );
  }
}

class MonumentArchitecture extends StatelessWidget {
  final PlaceDestination place;
  const MonumentArchitecture({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          itemCount: place.imageAsset.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              elevation: 2,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(place.imageAsset[index],
                                fit: BoxFit.cover, width: double.infinity)))
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class SpecialMeals extends StatelessWidget {
  final PlaceDestination place;
  const SpecialMeals({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: place.foodImage.length,
          itemBuilder: (context, index) {
            return Card(
                color: Colors.white,
                elevation: 2,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: SizedBox(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                place.foodImage[index],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, bottom: 8.0),
                        child: Text(
                          place.foodName[index],
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
