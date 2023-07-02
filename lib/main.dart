import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopee',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[500],
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(width: 5,height: 30,),
                TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: (){},
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.wallet, color: Colors.grey[700]),
                      SizedBox(height: 5.0,),
                      Text("To Pay", style: TextStyle(color: Colors.grey[700]),),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(width: 5,height: 30,),
                TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: (){},
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.card_giftcard, color: Colors.grey[700]),
                      SizedBox(height: 5.0,),
                      Text("To Ship", style: TextStyle(color: Colors.grey[700]),),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(width: 5,height: 30,),
                TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: (){},
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.bus_alert_outlined, color: Colors.grey[700]),
                      SizedBox(height: 5.0,),
                      Text("To Receive", style: TextStyle(color: Colors.grey[700]),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Me",
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Mall",
            ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active_rounded),
                label: "Notifications"
            ),
          ],
          fixedColor: Colors.deepOrange[500],
        )
    );
  }
}