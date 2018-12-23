import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      /**
       * EdgeInsets需要知晓
       */
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: new Text('shiliangL'),
          accountEmail: new Text('shiliangL@sine.com'),
          currentAccountPicture: new CircleAvatar(
            backgroundImage: new NetworkImage(
                'https://shiliangl.github.io/next/images/header.png'),
          ),
        ),
        ListTile(
            title: Text('项目地址', textAlign: TextAlign.left),
            // leading: Icon(Icons.settings,color: Colors.black45,size:20.0),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        Divider(),
        ListTile(
            title: Text('Layout',textAlign: TextAlign.left),
            trailing: Icon(Icons.arrow_right,color: Colors.black45,size:20.0),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/layout');
            }),
        Divider(),
        ListTile(
            title: Text('基础组件',textAlign: TextAlign.left),
            trailing: Icon(Icons.arrow_right,color: Colors.black45,size:20.0),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/layout');
            }),
        Divider(),
        ListTile(
            title: Text('Material',textAlign: TextAlign.left),
            trailing: Icon(Icons.arrow_right,color: Colors.black45,size:20.0),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/layout');
            }),
        Divider(),
      ],
    );
  }
}
