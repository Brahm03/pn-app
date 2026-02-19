import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'src/core/app/app.dart';

void main(List<String> args) async {
  await GetStorage.init();
  runApp(App());
}
