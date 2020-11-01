import 'package:flutter/material.dart';
import 'pages/messages.dart';
import 'pages/profile.dart';


class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class MainPage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Сообщения", Icons.messenger),
    new DrawerItem("Профиль", Icons.assignment_ind)
  ];

  @override
  _MainPageState createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
  int _selectedDrawerIndex = 0;



  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new MessagesPage();
      case 1:
        return new ProfilePage();
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }



  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
        new ListTile(
          leading: _selectedDrawerIndex == i ? new Icon(d.icon, color: Colors.amber) : new Icon(d.icon),
          title: _selectedDrawerIndex == i ? new Text(d.title, style: TextStyle(color: Colors.amber)) : new Text(d.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i),
        ),
      );
    }

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.amber,
          title: new Text(widget.drawerItems[_selectedDrawerIndex].title)
        ),
        drawer: new Drawer(
          child: new Column(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Имя Фамилия"), accountEmail: null, currentAccountPicture: null,
                decoration: BoxDecoration(
                  color: Colors.amber
                ),
              ),
              new Column(children: drawerOptions)
            ],
          ),
        ),
        body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}