import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 5.0),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40.0,
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'User Name',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'You have 48 vouchers',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Colors.deepPurple, Colors.deepPurple.shade500],
                end: Alignment.bottomCenter,
                tileMode: TileMode.repeated,
              ),
            ),
          ),
          DrawerListTile(
              title: 'My Vouchers', icon: Icons.list_alt_rounded, onTap: () {}),
          DrawerListTile(
              title: 'My History', icon: Icons.history, onTap: () {}),
          DrawerListTile(
              title: 'Where can I use', icon: Icons.store, onTap: () {}),
          DrawerListTile(
              title: 'How to use', icon: Icons.video_library, onTap: () {}),
          const Divider(
              color: Colors.indigoAccent, indent: 20.0, endIndent: 30.0),
          DrawerListTile(title: 'Contact us', icon: Icons.mail, onTap: () {}),
          // DrawerListTile(title: 'Privacy', icon: Icons.lock, onTap: () {}),
          DrawerListTile(title: 'Logout', icon: Icons.logout, onTap: () {}),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  const DrawerListTile({this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 25.0, color: Colors.black54),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      onTap: onTap,
    );
  }
}
