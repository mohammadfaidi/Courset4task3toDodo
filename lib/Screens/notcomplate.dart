import 'package:flutter/material.dart';
import 'package:cour4task3/Providers/tasks_provider.dart';
import 'package:provider/provider.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, TP, child) {
        return Scaffold(
            
            body: TP.basketItems.length == 0
                ? 
                Center(
                  child:Text(' no items in your Schedule',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold)), 
                )
                : ListView.builder(
                    itemCount: TP.basketItems.length,
                    itemBuilder: (context, index) {
                      return  Card(
                        child: ListTile(
                          title:TP.basketItems[index].chekvalueText?null:Text(TP.basketItems[index].valueText,style: TextStyle(fontSize: 17,color: Colors.red,fontWeight: FontWeight.bold)
                          ),
                          trailing: TP.basketItems[index].chekvalueText?null:Icon(Icons.favorite_border,color: Colors.red,),
                          
                          ),
                        );
                      
                    },
                  ));
      },
    ); 
  
  }
}