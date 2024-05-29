import 'package:flutter/material.dart';
import 'package:gradu_go/src/helpers/drawer_item.dart';
import 'package:gradu_go/src/presentation/about/about_fragment.dart';
import 'package:gradu_go/src/presentation/auth/login_fragment.dart';
import 'package:gradu_go/src/presentation/become_partner/become_partner_fragment.dart';
import 'package:gradu_go/src/presentation/home/main_fragment.dart';

final class HomePage extends StatefulWidget {
  final drawerItems = [
    DrawerItem('Home', Icons.home),
    DrawerItem('Sobre', Icons.info),
    DrawerItem('Seja Parceiro', Icons.group_add),
    DrawerItem('Carteirinha Digital', Icons.account_box),
  ];

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

final class _HomePageState extends State<HomePage> {
  static final _scaffoldKey = GlobalKey<ScaffoldState>();
  final fragmentsList = [
    MainFragment(),
    AboutFragment(),
    BecomePartnerFragment(),
    LoginFragment(_HomePageState._scaffoldKey),
  ];
  var _selectedDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      final currentDrawerIcon = widget.drawerItems[i];
      drawerOptions.add(
        ListTile(
          leading: Icon(currentDrawerIcon.leading),
          title: Text(currentDrawerIcon.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i),
        ),
      );
    }

    return PopScope(
      canPop: _onBackPressed(),
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(widget.drawerItems[_selectedDrawerIndex].title),
        ),
        drawer: Drawer(child: ListView(children: drawerOptions)),
        body: fragmentsList[_selectedDrawerIndex],
      ),
    );
  }

  void _onSelectItem(int index) {
    int effectiveIndex = index;
    if (index < 0 || index > fragmentsList.length - 1) {
      effectiveIndex = 0;
    }

    setState(() => _selectedDrawerIndex = effectiveIndex);
    Navigator.of(context).pop();
  }

  bool _onBackPressed() {
    if (_selectedDrawerIndex == 0) return true;

    setState(() => _selectedDrawerIndex = 0);

    return false;
  }
}
