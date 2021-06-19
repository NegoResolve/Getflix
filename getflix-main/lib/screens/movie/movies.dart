import 'package:flutter/material.dart';
import 'package:getflix/providers/list_of_movies.dart';
import 'package:getflix/shared/list_of_banner.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Populares no Getflix",
                style: Theme.of(context).textTheme.bodyText1),
            ListOfBanners(popular),
            Text("Em Alta", style: Theme.of(context).textTheme.bodyText1),
            ListOfBanners(onTheRise),
            Text("Assista de Novo",
                style: Theme.of(context).textTheme.bodyText1),
            ListOfBanners(watchAgain),
          ])),
    );
  }
}
