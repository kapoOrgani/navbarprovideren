import 'package:flutter/material.dart';
import 'package:navbarpr/screen1.dart';
import 'package:navbarpr/screen2.dart';
import 'package:navbarpr/screen3.dart';

class NavbarProvider with ChangeNotifier{
  List<NavbarDTO> items = [
    NavbarDTO(label: 'Home',widget: Screen1(),iconData: Icons.home),
    NavbarDTO(label: 'Chat',widget: Screen2(),iconData: Icons.chat),
    NavbarDTO(label: 'Profile',widget: Screen3(),iconData: Icons.account_box_rounded),
  ];
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }
}

class NavbarDTO{
  Widget? widget;
  String? label;
  IconData? iconData;

  NavbarDTO({this.widget, this.label, this.iconData});

}