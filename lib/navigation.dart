import "package:flutter/material.dart";

class Navigation extends StatelessWidget {
  const Navigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(
              backgroundColor: Colors.black,
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                children: const <Widget>[
                  _logo(),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  _sectionsTitle(),
                  ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    selectedTileColor: Color.fromARGB(255, 43, 43, 43),
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    title: Text(
                      'Top Stories',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    title: Text('Arts', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    title:
                        Text('Culture', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    title:
                        Text('Opinion', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    title: Text('Tech', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    title: Text('World', style: TextStyle(color: Colors.white)),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Label', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
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
              title: const Text('Page title',
                  style: TextStyle(color: Colors.white)),
              actions: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.search),
                ),
                Icon(Icons.more_vert),
              ],
            )));
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
            width: 10,
          ),
          Text(
            "TugcanNews",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
