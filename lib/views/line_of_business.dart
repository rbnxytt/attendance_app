import 'package:flutter/material.dart';
import 'package:my_app/channel_controller.dart';
import 'package:provider/provider.dart';

class LineOfBusiness extends StatelessWidget {
  const LineOfBusiness({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String currentStatus =
        Provider.of<ChannelController>(context).channelStatus;
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
                  const Text('SKRN'),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      Provider.of<ChannelController>(context, listen: false)
                          .changeStatus(currentStatus);
                    },
                    child: Text(currentStatus),
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
                  const Text('Like TV'),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Check-in'),
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
