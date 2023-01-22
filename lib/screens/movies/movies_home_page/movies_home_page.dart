import 'package:demo_application/screens/movies/movies_home_page/tabs/movies_home_tab/movies_home_tab.dart';
import 'package:flutter/material.dart';

// import 'package:hexcolor/hexcolor.dart';

class MoviesHomePage extends StatelessWidget {
  const MoviesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 30,
              )),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: Column(
          children: [
            TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                labelStyle: const TextStyle(fontSize: 32),
                // indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: const EdgeInsets.only(left: 15, right: 120),
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.pink[300]!, width: 3)),
                tabs: const [
                  Tab(
                    text: 'In Theater',
                  ),
                  Tab(
                    text: 'Box Office',
                  ),
                  Tab(
                    text: 'Coming Soon',
                  )
                ]),
            Expanded(
              child: TabBarView(children: [
                const MoviesHomeTab(),
                Container(
                  color: Colors.pink,
                ),
                Container(
                  color: Colors.pink,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
