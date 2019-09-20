import 'package:celebra_club/fragments/about_fragment.dart';
import 'package:celebra_club/fragments/become_partner_fragment.dart';
import 'package:celebra_club/fragments/login_fragment.dart';
import 'package:celebra_club/fragments/main_fragment.dart';
import 'package:celebra_club/helpers/drawer_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final drawerItems = [
    DrawerItem("Home", Icons.home),
    DrawerItem("Sobre", Icons.info),
    DrawerItem("Seja Parceiro", Icons.group_add),
    DrawerItem("Carteirinha Digital", Icons.account_box)
  ];

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final _scaffoldKey = GlobalKey<ScaffoldState>();
  final fragmentsList = [
    MainFragment(),
    AboutFragment(),
    BecomePartnerFragment(),
    LoginFragment(_HomePageState._scaffoldKey)
  ];
  var _selectedDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var currentDrawerIcon = widget.drawerItems[i];
      drawerOptions.add(ListTile(
          leading: Icon(currentDrawerIcon.leading),
          title: Text(currentDrawerIcon.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i)));
    }

    return WillPopScope(
      onWillPop: () => _onBackPressed(),
      child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
              title: Text(widget.drawerItems[_selectedDrawerIndex].title)),
          drawer: Drawer(child: ListView(children: drawerOptions)),
          body: fragmentsList[_selectedDrawerIndex]),
    );
  }

  _onSelectItem(int index) {
    if (index < 0 || index > fragmentsList.length - 1) {
      index = 0;
    }

    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop();
  }

  _onBackPressed() {
    if (_selectedDrawerIndex == 0) return Future.value(true);

    setState(() => _selectedDrawerIndex = 0);

    return Future.value(false);
  }
}
