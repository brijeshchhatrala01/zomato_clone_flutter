import 'package:flutter/material.dart';
import 'package:zomato_clone_flutter/appbar/search_appbar.dart';

class LocationPage extends StatelessWidget {
  LocationPage({super.key});

  final _searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: CustomScrollView(
          slivers: [
            SearchAppBar(
              searchFood: _searchBarController,
              onPressed: null,
              hintText: '',
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  Card(
                    margin: EdgeInsets.all(16),
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        'Home',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                              'Dwarkesh Willa A-401 Udaynagar 17,somna society, Om nagar, Rajkot'),
                          Row(
                            children: [
                              Text('Phone number : '),
                              Text(
                                '+919023061129',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
