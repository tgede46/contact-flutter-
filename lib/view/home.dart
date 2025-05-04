import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: Scaffold(
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All contact',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Icon(Icons.logout)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: SearchBar(
                    backgroundColor:
                    WidgetStatePropertyAll<Color>
                      (Colors.transparent),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black
                        )
                      )
                    ),
                    elevation: WidgetStatePropertyAll(0),
                    leading: Icon(Icons.search),
                    // trailing: [Icon(Icons.security)], cela permet de faire pour la fin
                    hintText: 'search',
                  )
                  ),
                  SizedBox(width: 20,),
                  Icon(Icons.sort_by_alpha)
                ],
              ),
            )
          ],
          ),
        ) ,
      );
  }
}