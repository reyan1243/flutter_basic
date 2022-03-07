import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgUrl="data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              // margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                  accountName: Text("Reyan Ishtiaq",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  
                  ),
                  accountEmail: Text("reyanishtiaq1122@gmail.com",
                  textScaleFactor: 1.1,),
                  ),
              // margin: EdgeInsets.zero,
              // padding: EdgeInsets.zero,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ) ,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.qrcode,
                color: Colors.white,
              ),
              title: Text(
                "QR Code scanner",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
