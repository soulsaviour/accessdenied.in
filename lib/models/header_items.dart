import 'package:flutter/cupertino.dart';
import 'package:flutter_app/pages/home/component/header.dart';

class HeaderItem{
  final String title;
  final VoidCallback onTap;
  final bool isButton;

  HeaderItem({
    required this.title,
    required this.onTap,
    this.isButton = false,
  });
}