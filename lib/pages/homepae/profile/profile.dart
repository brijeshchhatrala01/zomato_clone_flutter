import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:zomato_clone_flutter/custom_widgets/custom_widgets.dart';
import 'package:zomato_clone_flutter/service/auth_service.dart';
import 'package:zomato_clone_flutter/service/firebase_auth/authcheck.dart';
import 'package:zomato_clone_flutter/theme/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: kHomepageBG,
              toolbarHeight: 100,
              surfaceTintColor: kHomepageBG,
              pinned: true,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 32,
                    child: Icon(Icons.person),
                  ),
                  Column(
                    children: [
                      Text('Brijesh Chhatrala'),
                      Text(
                        'Gold Member',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              mediumSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: displayWidth / 2 - 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kWhiteColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(28.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.favorite_border),
                          smallSizedBox,
                          Text('Favorites')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: displayWidth / 2 - 40,
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Padding(
                      padding: EdgeInsets.all(28.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.currency_rupee),
                          smallSizedBox,
                          Text('Money')
                        ],
                      ),
                    ),
                  )
                ],
              ),
              smallSizedBox,
              ListTile(
                onTap: () => MotionToast.success(
                  title: Text('MT'),
                  description: Text('Motion Toast'),
                ).show(context),
                tileColor: kWhiteColor,
                leading: CircleAvatar(
                  backgroundColor: kGrey,
                  child: Icon(Icons.person),
                ),
                title: Text('Your Profile'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              smallSizedBox,
              ListTile(
                onTap: () => FirebaseAuthService()
                    .logoutFromApp()
                    .whenComplete(() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FirebaseAuthCheck(),
                        ))),
                tileColor: kWhiteColor,
                leading: CircleAvatar(
                  backgroundColor: kGrey,
                  child: Icon(Icons.star_border),
                ),
                title: Text('Logout'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              mediumSizedBox,
              Card(
                child: Column(
                  children: [
                    smallSizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Food Order',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    smallSizedBox,
                    Column(
                      children: [
                        const ListTile(
                          tileColor: kWhiteColor,
                          leading: CircleAvatar(
                            backgroundColor: kGrey,
                            child: Icon(Icons.person),
                          ),
                          title: Text('Your Profile'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ),
                        const ListTile(
                          tileColor: kWhiteColor,
                          leading: CircleAvatar(
                            backgroundColor: kGrey,
                            child: Icon(Icons.person),
                          ),
                          title: Text('Your Profile'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ),
                        const ListTile(
                          tileColor: kWhiteColor,
                          leading: CircleAvatar(
                            backgroundColor: kGrey,
                            child: Icon(Icons.person),
                          ),
                          title: Text('Your Profile'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ),
                        const ListTile(
                          tileColor: kWhiteColor,
                          leading: CircleAvatar(
                            backgroundColor: kGrey,
                            child: Icon(Icons.person),
                          ),
                          title: Text('Your Profile'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              mediumSizedBox,
              Card(
                child: Column(
                  children: [
                    smallSizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Food Order',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    smallSizedBox,
                    Column(
                      children: [
                        const ListTile(
                          tileColor: kWhiteColor,
                          leading: CircleAvatar(
                            backgroundColor: kGrey,
                            child: Icon(Icons.person),
                          ),
                          title: Text('Your Profile'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ),
                        const ListTile(
                          tileColor: kWhiteColor,
                          leading: CircleAvatar(
                            backgroundColor: kGrey,
                            child: Icon(Icons.person),
                          ),
                          title: Text('Your Profile'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ),
                        const ListTile(
                          tileColor: kWhiteColor,
                          leading: CircleAvatar(
                            backgroundColor: kGrey,
                            child: Icon(Icons.person),
                          ),
                          title: Text('Your Profile'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ),
                        const ListTile(
                          tileColor: kWhiteColor,
                          leading: CircleAvatar(
                            backgroundColor: kGrey,
                            child: Icon(Icons.person),
                          ),
                          title: Text('Your Profile'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ]))
          ],
        ),
      )),
    );
  }
}
