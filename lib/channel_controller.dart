import 'package:flutter/material.dart';

class ChannelController extends ChangeNotifier {
  String _channelStatus = 'Check-in';

  String get channelStatus => _channelStatus;

  void changeStatus(String currentStatus) {
    currentStatus == 'Check-in'
        ? _channelStatus = 'Check-out'
        : _channelStatus = 'Check-in';
    notifyListeners();
  }
}
