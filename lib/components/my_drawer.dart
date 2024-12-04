import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  //logout
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            DrawerHeader(
            child: Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          //home title
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: const Text("HOME"),
              onTap: () {
                //pop drawer
                Navigator.pop(context);

                //navigate to home page
                Navigator.pushNamed(context, '/home_page');
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: const Text("PROFILE"),
              onTap: () {
                //pop drawer
                Navigator.pop(context);

                //navigate to profile page
                Navigator.pushNamed(context, '/profile_page');
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.group,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: const Text("USERS"),
              onTap: () {
                //pop drawer
                Navigator.pop(context);

                //navigate to users page
                Navigator.pushNamed(context, '/users_page');
              },
            ),
          ),
        ],
      ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: const Text("LOGOUT"),
              onTap: () {
                Navigator.pop(context);

                //logout
                logout();
              },
            ),
          ),
        ],
      ),
    );
  }
}