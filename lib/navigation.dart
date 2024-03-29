import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "switch.dart";

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int mood = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: _sideDrawer(),
            appBar: AppBar(
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(Icons.menu)),
              ),
              title: const Text('TugcaNews',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              actions: <Widget>[
                PopupMenuButton(
                    tooltip: "Settings",
                    icon: const Icon(Icons.settings),
                    itemBuilder: (BuildContext bc) {
                      return [
                        const PopupMenuItem(
                          value: "settings",
                          child: Text("Settings"),
                        ),
                        const PopupMenuItem(
                          value: "display",
                          child: Text("Appearance"),
                        ),
                        const PopupMenuItem(
                          value: "mood",
                          child: SwitchMood(),
                        )
                      ];
                    })
              ],
            )));
  }

  Widget _sideDrawer() {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 3, 3, 3),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: <Widget>[
          const _logo(),
          const Divider(
            color: Color.fromARGB(255, 46, 46, 46),
            height: 1,
            thickness: 1,
          ),
          const _sectionsTitle(),
          _listItem("Top Stories"),
          const SizedBox(
            height: 5,
          ),
          _listItem("Arts"),
          const SizedBox(
            height: 5,
          ),
          _listItem("Culture"),
          const SizedBox(
            height: 5,
          ),
          _listItem("Opinion"),
          const SizedBox(
            height: 5,
          ),
          _listItem("Tech"),
          const SizedBox(
            height: 5,
          ),
          _listItem("World"),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Color.fromARGB(255, 46, 46, 46),
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('BECOME A SUBSCRIBER',
                style: GoogleFonts.aldrich(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic))),
          ),
          ListTile(
            title: Text(
                "TugcaNews' newsletters cover a variety of topics, from arts to tech content, world news info to opinions. Subscribe to get the latest news!",
                style: GoogleFonts.aldrich(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 207, 207, 207),
                        fontSize: 11))),
          ),
        ],
      ),
    );
  }

  Widget _listItem(String text) {
    return ListTile(
      onTap: () {
        setState(() {});
      },
      hoverColor: const Color.fromARGB(255, 27, 27, 27),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))),
      selectedTileColor: const Color.fromARGB(255, 27, 27, 27),
      contentPadding: const EdgeInsets.symmetric(horizontal: 30),
      title: Text(text,
          style: GoogleFonts.aldrich(
              textStyle:
                  const TextStyle(color: Color.fromARGB(255, 207, 207, 207)))),
    );
  }
}

// ignore: camel_case_types
class _sectionsTitle extends StatelessWidget {
  const _sectionsTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text('SECTIONS',
          style: GoogleFonts.aldrich(
              textStyle: const TextStyle(
                  color: Colors.green,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))),
    );
  }
}

// ignore: camel_case_types
class _logo extends StatelessWidget {
  const _logo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(
            Icons.newspaper_outlined,
            size: 30,
            color: Colors.green,
          ),
          const SizedBox(
            width: 5,
          ),
          Text("TugcaNews",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),
              ))
        ],
      ),
    );
  }
}
