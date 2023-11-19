import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gameoflife/app/screens/home_page.dart';
import 'package:gameoflife/constants/strings.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        title: Strings.title,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    ),
  );
}
