import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.tellychakkar.com/sites/www.tellychakkar.com/files/styles/amp_metadata_content_image_min_696px_wide/public/images/story/2013/03/19/mahadev.jpg?itok=N7jgkcdJ";
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: const BoxDecoration(color: Colors.deepOrange),
                  accountName: const Text("Anand Salokiya"),
                  accountEmail: const Text("annusallokiya6337@gmai.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.book_circle,
                color: Colors.white,
              ),
              title: Text(
                "New Books",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.bookmark_fill,
                color: Colors.white,
              ),
              title: Text(
                "Saved Books",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "User Account",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.headphones,
                color: Colors.white,
              ),
              title: Text(
                "Contact & Support",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
