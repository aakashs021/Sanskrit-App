import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class 6'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          GestureDetector(
              onTap: () {
                bottompagerise(context, height);
              },
              child: const ListTile(
                title: Text('Weightage'),
              )),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Chapter ${index + 1}'),
              );
            },
          ),
        ],
      ),
    );
  }
}

bottompagerise(BuildContext context, double height) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20), right: Radius.circular(20))),
        height: height * 0.3,
        child: Table(
          children: const [
            TableRow(children: [
              Text('data1'),
              Align(alignment: Alignment.centerRight, child: Text('10'))
            ]),
            TableRow(children: [Text('data1'), Text('20')])
          ],
        ),
      );
    },
  );
}
