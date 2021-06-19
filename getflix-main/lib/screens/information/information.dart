import 'package:flutter/material.dart';
import 'package:getflix/models/movie.dart';
import 'package:getflix/providers/list_of_movies.dart';
import 'package:getflix/shared/item_menu.dart';
import 'package:getflix/shared/list_of_banner.dart';
import 'package:getflix/style.dart';

//Escopo global
late Movie _movie;

class Information extends StatefulWidget {
  Information(Movie movieSend) {
    _movie = movieSend;
  }

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  late int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(children: [
              Image.asset("assets/images/${_movie.banner}.jpg"),
              Container(
                color: Colors.black.withOpacity(0.5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Image.asset("assets/images/logo.png")),
                      ItemMenu(word: "Séries"),
                      ItemMenu(word: "Filmes"),
                      ItemMenu(word: "Minha Lista")
                    ]),
              )
            ]),
            Padding(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [
                        Image.asset("assets/images/plus.png"),
                        Text("Minha Lista",
                            style: TextStyle(color: Colors.white))
                      ]),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Image.asset("assets/images/play.png"),
                          label: Text("Assistir"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, onPrimary: Colors.black)),
                      Column(children: [
                        Image.asset("assets/images/details.png"),
                        Text("Detalhes", style: TextStyle(color: Colors.white))
                      ])
                    ])),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child:
                  Text("Em Alta", style: Theme.of(context).textTheme.bodyText1),
            ),
            ListOfBanners(onTheRise)
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/home.png"),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/search.png"),
              label: "Buscar",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/player.png"),
              label: "Em breve",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/download.png"),
              label: "Dowloads",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/menu.png"),
              label: "Mais",
              backgroundColor: Colors.black),
        ],
        showUnselectedLabels: true,
        selectedItemColor: grayNavigatorBar,
        unselectedItemColor: grayNavigatorBar,
        selectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle:
            TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
