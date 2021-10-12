import 'package:flutter/material.dart';

class listScreen extends StatefulWidget {
  const listScreen({Key? key}) : super(key: key);

  @override
  _listScreenState createState() => _listScreenState();
}

class _listScreenState extends State<listScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Card(
          //   elevation: 10,
          //   margin: EdgeInsets.only(bottom: 510, left: 10, right: 10, top: 10),
          //   child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //     Center(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Text(
          //             'Coins',
          //             style: TextStyle(
          //                 fontFamily: 'AmaticSC',
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 30),
          //           ),
          //           IconButton(
          //             alignment: Alignment.center,
          //             icon: Icon(
          //               Icons.attach_money,
          //               size: 40,
          //             ),
          //             onPressed: () {},
          //           )
          //         ],
          //       ),
          //     ),
          //   ]),
          // ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              onChanged: (value) {},
              decoration: InputDecoration(
                label: Icon(Icons.search),
                hintText: 'Search the item',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 10, top: 10, right: 30, left: 30),
            child: Card(
              elevation: 0,
              //margin: EdgeInsets.only(bottom: 510, left: 10, right: 10, top: 10),
              child: ListTile(
                  tileColor: Colors.grey[300],
                  title: Text(
                    'Your Coins',
                    style: TextStyle(
                        fontFamily: 'AmaticSC',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  trailing: IconButton(
                    alignment: Alignment.center,
                    icon: Icon(
                      Icons.attach_money,
                      size: 40,
                    ),
                    onPressed: () {},
                  )),
            ),
          ),
          Card(
            elevation: 10,
            //margin: EdgeInsets.only(bottom: 510, left: 10, right: 10, top: 10),
            child: ListTile(
                title: Text(
                  'Item 1',
                  style: TextStyle(
                      fontFamily: 'AmaticSC',
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                trailing: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    size: 40,
                  ),
                  onPressed: () {},
                )),
          ),
          Card(
            elevation: 10,
            //margin: EdgeInsets.only(bottom: 510, left: 10, right: 10, top: 10),
            child: ListTile(
                title: Text(
                  'Item 2',
                  style: TextStyle(
                      fontFamily: 'AmaticSC',
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                trailing: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    size: 40,
                  ),
                  onPressed: () {},
                )),
          ),
          Card(
            elevation: 10,
            //margin: EdgeInsets.only(bottom: 510, left: 10, right: 10, top: 10),
            child: ListTile(
                title: Text(
                  'Item 3',
                  style: TextStyle(
                      fontFamily: 'AmaticSC',
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                trailing: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    size: 40,
                  ),
                  onPressed: () {},
                )),
          ),
          Card(
            elevation: 10,
            //margin: EdgeInsets.only(bottom: 510, left: 10, right: 10, top: 10),
            child: ListTile(
                title: Text(
                  'Item 4',
                  style: TextStyle(
                      fontFamily: 'AmaticSC',
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                trailing: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    size: 40,
                  ),
                  onPressed: () {},
                )),
          ),
          Card(
            elevation: 10,
            //margin: EdgeInsets.only(bottom: 510, left: 10, right: 10, top: 10),
            child: ListTile(
                title: Text(
                  'Item 5',
                  style: TextStyle(
                      fontFamily: 'AmaticSC',
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                trailing: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    size: 40,
                  ),
                  onPressed: () {},
                )),
          ),
        ],
      ),
    );
  }
}
