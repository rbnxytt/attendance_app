import 'package:flutter/material.dart';

class LineOfBusiness extends StatelessWidget {
  const LineOfBusiness({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10.0, mainAxisSpacing: 10.0, crossAxisCount: 5),
        children: [
          Card(
            color: Colors.greenAccent,
            elevation: 8.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('SKRN'),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {},
                    child: Text('Check-in'),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            elevation: 8.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Like TV'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Check-in'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
