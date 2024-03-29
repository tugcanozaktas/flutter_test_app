import "package:flutter/material.dart";

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(
              backgroundColor: Colors.black,
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Label', style: TextStyle(color: Colors.white)),
                  ),
                  const ListTile(
                    leading: Icon(Icons.bookmark),
                    title:
                        Text('Item A', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(Icons.menu)),
              ),
              title: const Text('TugcaNews',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              actions: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.search),
                ),
                Icon(Icons.more_vert),
              ],
            )));
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
      title: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}

// ignore: camel_case_types
class _sectionsTitle extends StatelessWidget {
  const _sectionsTitle();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'SECTIONS',
        style: TextStyle(
            color: Colors.green,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
    );
  }
}

// ignore: camel_case_types
class _logo extends StatelessWidget {
  const _logo();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(
            Icons.newspaper_outlined,
            size: 30,
            color: Colors.green,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "TugcaNews",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
