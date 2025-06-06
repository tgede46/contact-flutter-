import 'package:flutter/material.dart';
import 'package:contactapp/model/user.dart';
import 'package:contactapp/data/data.dart';

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
                        ),borderRadius: BorderRadius.circular(25)
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
            ),
           Expanded(
             child: ListView.separated(
                 itemBuilder: (context,index)
                 {
                   return  ListTile(
                     leading: CircleAvatar(
                       backgroundColor: Colors.red,
                       child: Text(listeUer[index].nom[1],
                         style: TextStyle(
                             fontSize: 22,
                             color: Colors.white),),
                     ),
                     title: Text(listeUer[index].nom.toUpperCase(),style:TextStyle(fontWeight: FontWeight.bold),),
                     subtitle: Text(listeUer[index].post),
                     trailing:
                     Row(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         CircleAvatar(child: Icon(Icons.call,size: 15,),
                             radius: 15),
                         SizedBox(width: 15,),
                         CircleAvatar(child: Icon(Icons.message,size: 15),
                           radius: 15,)
                       ],
                     ),
                   );
                 },
                 separatorBuilder: (context,index){
                   return Divider();
                 },
                 itemCount: 10),
           )
          ],
          ),
        ) ,
      );
  }
}