import 'package:flutter/material.dart';

class SearchMovieDelegate extends SearchDelegate{

  @override
  String? get searchFieldLabel => 'Buscar película';


  @override
  List<Widget>? buildActions(BuildContext context) {
    return [Text('BuildActions')];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return Text('BuildLeading');
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('buildResults');

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('buildSuggestions');

  }

}  