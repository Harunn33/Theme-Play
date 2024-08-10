import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ConnectionController extends GetxController {
  final Rx<MConnectivityResult> _connectionType = MConnectivityResult.none.obs;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription _streamSubscription;

  MConnectivityResult get connectionType => _connectionType.value;

  set connectionType(value) {
    _connectionType.value = value;
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    getConnectivityType();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateState);
  }

  Future<void> getConnectivityType() async {
    late ConnectivityResult connectivityResult;
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return _updateState(connectivityResult);
  }

  void _updateState(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionType = MConnectivityResult.wifi;
        Get.isDialogOpen ?? Get.back();
        break;
      case ConnectivityResult.mobile:
        connectionType = MConnectivityResult.mobile;
        Get.isDialogOpen ?? Get.back();
        break;
      case ConnectivityResult.none:
        connectionType = MConnectivityResult.none;
        // Get.dialog(
        //   AlertDialog(
        //     title: const Text('No Internet Connection'),
        //     content: const Text('Please check your internet connection'),
        //     actions: <Widget>[
        //       TextButton(
        //         onPressed: () {
        //           Get.back();
        //         },
        //         child: const Text('OK'),
        //       ),
        //     ],
        //   ),
        // );
        break;
      default:
        connectionType = MConnectivityResult.none;
        print('Failed to get connection type');
        break;
    }
    update();
  }

  @override
  void onClose() {
    _streamSubscription.cancel();
  }

  Future<void> checkInternetConnection() async {
    await getConnectivityType();
    if (connectionType == MConnectivityResult.none) {
      print("No internet connection");
    }
  }
}

enum MConnectivityResult { none, wifi, mobile }
