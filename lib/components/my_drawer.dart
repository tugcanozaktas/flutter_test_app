import 'package:flutter/material.dart';
import 'package:test_drive/components/login_or_register.dart';
import 'package:test_drive/components/my_list_tile.dart';
import 'package:test_drive/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Icon(
              Icons.newspaper,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            MyListTile(
              icon: Icons.whatshot,
              text: "H O T N E W S",
              onTap: () => {Navigator.pop(context)},
            ),
            const SizedBox(
              height: 10,
            ),
            MyListTile(
                icon: Icons.settings,
                text: "S E T T I N G S",
                onTap: () => {
                      Navigator.pop(context),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()),
                      ),
                    }),
            const Spacer(),
            MyListTile(
                icon: Icons.logout,
                text: "L O G O U T",
                onTap: () => {
                      Navigator.pop(context),
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginOrRegister()))
                    }),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
