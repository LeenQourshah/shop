import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/theme_provider.dart';
import 'package:shop/screens/home_screen.dart';

class purchasedScreen extends StatefulWidget {
  const purchasedScreen({Key? key}) : super(key: key);

  @override
  _purchasedScreenState createState() => _purchasedScreenState();
}

class _purchasedScreenState extends State<purchasedScreen> {
  @override
  Widget build(BuildContext context) {
    //just comment
    return Scaffold(
      // floatingActionButton: Consumer<themeProvider>(
      //   builder: (context, value, child) => FloatingActionButton(
      //     child: Icon(
      //       Icons.text_fields_rounded,
      //       size: 35,
      //     ),
      //     onPressed: () {
      //     },
      //     backgroundColor: Colors.red,
      //   ),

      body: Column(
        children: [
          Center(
            child: Consumer<themeProvider>(
              builder: (context, themeProvider, child) {
                return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        //HERE
                        Text('Your Purchased Items',
                            style: themeProvider.newText ? newStyle : oldStyle),
                        CheckboxListTile(
                            title: Text('Change Text',
                                style: themeProvider.newText
                                    ? newStyle
                                    : oldStyle),
                            value: themeProvider.newText,
                            onChanged: (value) {
                              themeProvider.toggleTheme();
                            })
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
