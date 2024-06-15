import 'package:flutter/material.dart';
import 'package:gradu_go/src/app.dart';
import 'package:gradu_go/src/core/dependency_injection/dependency_injection.dart';

void main() {
  configureDependencyManager();
  runApp(GraduGoApp());
}
