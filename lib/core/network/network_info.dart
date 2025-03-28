import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';

class NetworkInfo {
  final Connectivity connectivity;

  NetworkInfo(this.connectivity);

  // Stream to listen to connectivity changes
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;

  // Method to check if connected to the internet
  Future<bool> isConnected() async {
    final connectivityResult = await connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  // Method to provide a human-readable status
  String getStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.none:
        return 'No Internet';
      case ConnectivityResult.mobile:
        return 'Mobile Data';
      case ConnectivityResult.wifi:
        return 'Wi-Fi';
      case ConnectivityResult.ethernet:
        return 'Ethernet';
      default:
        return 'Unknown';
    }
  }
}
