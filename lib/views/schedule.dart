import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class ScheduleTable extends StatelessWidget {
  const ScheduleTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Table(
        children: [
          TableRow(
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 2.0, color: Colors.pink))),
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                child: FittedBox(child: Text('Line of Business')),
              ),
              for (String day in daysOfTheWeek)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                  child: Text(day),
                ),
            ],
          ),
          const TableRow(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.blueGrey))),
            children: [
              Text('SKRN'),
              Text('2 AM - 10PM'),
              Text('2 AM - 10PM'),
              Text('Day off'),
              Text('Day off'),
              Text('2 AM - 10PM'),
              Text('2 AM - 10PM'),
              Text('2 AM - 10PM'),
            ],
          ),
          const TableRow(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.blueGrey))),
            children: [
              Text('LIKE TV'),
              Text('4 AM - 10PM'),
              Text('3 AM - 12PM'),
              Text('Day off'),
              Text('Day off'),
              Text('4 AM - 10PM'),
              Text('4 AM - 10PM'),
              Text('4 AM - 10PM'),
            ],
          ),
        ],
      ),
    );
  }
}
