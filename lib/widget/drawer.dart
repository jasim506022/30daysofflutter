import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-1/328850040_1164623384256510_2034598861152518291_n.jpg?stp=c231.386.731.731a_dst-jpg_s160x160&_nc_cat=106&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=bznqpcTCFp4AX_nwY9V&_nc_ht=scontent.fdac24-3.fna&oh=00_AfDInmFaGdpTknREAZa7G2FqL-hoDWwwDMGhq30-82eqSA&oe=63E4E605";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.all(0),
                  accountName: Text("Md Jasim Uddin"),
                  accountEmail: Text('jasimrony50@gmail.'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
