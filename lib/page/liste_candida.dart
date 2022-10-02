import 'package:flutter/material.dart';

class ListCandidat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipeListCandidat();
  }
}

class RecipeListCandidat extends State<ListCandidat> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  List<ListCandidat> CandidatList = [];
  return Scaffold(
    appBar: AppBar(
      title: Text("Liste des candidats"),
    ),
    body: Container(
      height: MediaQuery.of(context).size.height * 0.75,
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text('wiem ksila.$index'),
            subtitle: Text('Wiemksila123@gmail.com.$index'),
            trailing: const Icon(Icons.arrow_forward),
          ),
        ),
      ),
    ),
  );
}
