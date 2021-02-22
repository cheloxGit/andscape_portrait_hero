import 'package:flutter/material.dart';
import 'package:landscape_portrait_hero/constants.dart';
import 'package:landscape_portrait_hero/utils.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> cards = List<Widget>();

  // Platform messages are asynchronous, so we initialize in an async method.

  buildCard(String label, String screen) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, screen);
      },
      child: Card(
        elevation: 5,
        color: MAIN_COLOR,
        child: Padding(
          padding: EdgeInsets.all(7),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 1.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    label,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 10.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Hero(
                                        tag: screen.replaceAll('/', ''),
                                        child: Image.asset(
                                          'assets/images/' +
                                              screen.replaceAll('/', '') +
                                              '.jpg',
                                          fit: BoxFit.contain,
                                          scale: 9.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    cards.add(
      buildCard(
        'Mercury',
        MERCURY_UI,
      ),
    );
    cards.add(
      buildCard(
        'Venus',
        VENUS_UI,
      ),
    );
    cards.add(
      buildCard(
        'Earth',
        EARTH_UI,
      ),
    );
    cards.add(
      buildCard(
        'Mars',
        MARS_UI,
      ),
    );
    cards.add(
      buildCard(
        'Jupyter',
        JUPYTER_UI,
      ),
    );
    cards.add(
      buildCard(
        'Saturn',
        SATURN_UI,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: SafeArea(
            child: getAppBar(
              context,
              'Dashboard',
            ),
          ),
        ),
        body: GridView.count(
          shrinkWrap: true,
          childAspectRatio: 1.2,
          crossAxisCount: 2,
          children: [
            for (int i = 0; i < cards.length; i++) cards[i],
          ],
        ));
  }
}
