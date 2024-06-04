import "package:flutter/material.dart";
import "package:test_drive/components/Home%20Page/bottom_navbar.dart";
import "package:test_drive/components/Home%20Page/App%20Bar/my_logo.dart";
import "package:test_drive/components/Home%20Page/App%20Bar/my_search_bar.dart";
import "package:test_drive/components/Home%20Page/home_saved_setting.dart";

class NewHomePage extends StatefulWidget {
  const NewHomePage({super.key});

  @override
  State<NewHomePage> createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  bool dataRetrieved = false;
  var _selectedIndex = 0;
  void onItemTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var apiKey = "f29f03ecfd244a0f83b52dfcc69bedca";

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [MyLogo(), MySearchBar()],
          ),
        ),
        body: HomeSavedSetting(
          pageNo: _selectedIndex,
        ),
        bottomNavigationBar: BottomNavbar(
          selectedIndex: _selectedIndex,
          setSelectedIndex: onItemTap,
        ));
  }
}
