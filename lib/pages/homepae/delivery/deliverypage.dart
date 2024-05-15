import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:zomato_clone_flutter/custom_widgets/profile_appbar.dart';
import 'package:zomato_clone_flutter/custom_widgets/search_appbar.dart';
import 'package:zomato_clone_flutter/pages/homepae/custom_widgets/header_homepage.dart';
import 'package:zomato_clone_flutter/theme/colors.dart';

//delivery page
class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  List images = [
    'Assets/image1.avif',
    'Assets/image2.avif',
    'Assets/image3.avif',
    'Assets/image4.avif',
    'Assets/image5.avif',
    'Assets/image6.avif',
    'Assets/image7.avif',
    'Assets/image8.avif',
    'Assets/image9.avif',
  ];

  List catImage = [
    'Assets/pizzacat.avif',
    'Assets/birianicat.avif',
    'Assets/thalicat.avif',
    'Assets/burgercat.avif',
    'Assets/dosacat.avif',
    'Assets/northindiacat.avif',
    'Assets/rollscat.avif',
    'Assets/sandwitchcat.avif',
    'Assets/friedricecat.avif',
  ];

  bool isFavorit = false;

  final _searchFood = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;

    return RefreshIndicator(
      onRefresh: () async {},
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: CustomScrollView(slivers: [
            const ProfileAppBar(),
            SearchAppBar(
              searchFood: _searchFood,
              onPressed: () {
              
              },
            ),
            HeaderHomepage(
              displayWidth: displayWidth,
              onPressedRecommanded: () {},
              onPressedFavorit: () {},
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: displayHeight > 400 ? displayHeight / 3 : displayHeight,
                child: GridView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: List.generate(
                    images.length,
                    (index) => Stack(children: [
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('$index'),
                            ),
                          );
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Opacity(
                                opacity: 0.7,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    images[index],
                                    width: displayWidth / 3,
                                    height: displayHeight > 400
                                        ? displayHeight / 10
                                        : displayHeight / 2.9,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("La Pino'z Pizza"),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '23 mins',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorit = !isFavorit;
                            });
                          },
                          icon: isFavorit
                              ? const Icon(
                                  Icons.favorite,
                                  color: primaryColorWhite,
                                )
                              : const Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                      const Positioned(
                        bottom: 52,
                        left: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('50% OFF'),
                            Text('up to ₹100'),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 12,
                ),
                const Center(
                  child: Text('EXPLORE'),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.save),
                            Text('Offers'),
                            Text('up to 60% off')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.save),
                            Text('Offers'),
                            Text('up to 60% off')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.save),
                            Text('Offers'),
                            Text('up to 60% off')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                const Center(
                  child: Text("WHAT'S ON YOUR MIND?"),
                ),
                const SizedBox(
                  height: 18,
                )
              ]),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 300,
                child: GridView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: List.generate(
                      catImage.length,
                      (index) => Column(
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(catImage[index]),
                              ),
                              const Text("Food Item")
                            ],
                          )),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 18,
                ),
                CarouselSlider(
                  items: [
                    Image.asset(
                      'Assets/pizzacat.avif',
                    ),
                    Image.asset('Assets/dosacat.avif'),
                    Image.asset('Assets/northindiacat.avif'),
                  ],
                  options: CarouselOptions(
                    aspectRatio: 1,
                    autoPlay: true,
                    height: 180,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Center(
                  child: Text('ALL RESTAURANTS'),
                ),
                const SizedBox(
                  height: 18,
                ),
              ]),
            ),
            SliverAppBar(
              backgroundColor: kWhiteColor,
              pinned: true,
              title: SizedBox(
                height: 40,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey[300]!)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Field $index",
                              style: const TextStyle(fontSize: 10),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(List.generate(
                  images.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        child: Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Opacity(
                                      opacity: 0.9,
                                      child: Image.asset(
                                        images[index],
                                        height: displayHeight > 400
                                            ? displayHeight / 5
                                            : displayHeight / 2,
                                        width: displayWidth,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 4,
                                    top: 4,
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isFavorit = !isFavorit;
                                            });
                                          },
                                          icon: isFavorit
                                              ? const Icon(
                                                  Icons.favorite,
                                                  color: primaryColorWhite,
                                                )
                                              : const Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.more_vert,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("La Pino'z Pizza"),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('4.1'),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Icon(Icons.star_border)
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ))),
            ),
          ]),
        ),
      ),
    );
  }
}
