import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class LogView extends StatelessWidget {
  const LogView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.pink, width: 2.0))),
                  height: 30.0,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (String label in tableLabels)
                          SizedBox(
                            width: 150.0,
                            child: Center(child: Text(label)),
                          )
                      ],
                    ),
                  ),
                ),
                for (int i = 0; i < 10; i++) const LogData()
              ],
            ),
          ),
        ]))
      ],
    );
  }
}

class LogData extends StatelessWidget {
  const LogData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.blueGrey, width: 1.0))),
      height: 30.0,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(
              width: 150.0,
              child: Center(child: Text('6/24/2022')),
            ),
            SizedBox(
              width: 150.0,
              child: Center(
                child: Text('9:00 PM'),
              ),
            ),
            SizedBox(
              width: 150.0,
              child: Center(child: Text('6/25/2022')),
            ),
            SizedBox(
              width: 150.0,
              child: Center(child: Text('5:00 AM')),
            ),
            SizedBox(
              width: 150.0,
              child: Center(child: Text('8:00')),
            ),
          ],
        ),
      ),
    );
  }
}
