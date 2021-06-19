import 'package:flutter/material.dart';
import 'package:getflix/screens/movie/movies.dart';

List<Widget> listOfScreens = [
  Movies(),
  // Search(),
  // Soon(),
  // Downloads(),
  // More(),
  Container(child: Text("Tela de Busca")),
  Container(child: Text("Tela de Novidades")),
  Container(child: Text("Tela de Downloads")),
  Container(child: Text("Tela de Mais")),
];
