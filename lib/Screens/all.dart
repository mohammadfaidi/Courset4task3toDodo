import 'package:flutter/material.dart';
import 'package:cour4task3/Providers/tasks_provider.dart';
import 'package:provider/provider.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, TP, child) {
        return Scaffold(
            
            body: TP.basketItems.length == 0
                ? 
                Center(
                  child:Text('no items in your Schedule',style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold)), 
                )
                : ListView.builder(
                    itemCount: TP.basketItems.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(TP.basketItems[index].valueText,style: TextStyle(fontSize: 17,color: Colors.blue,fontWeight: FontWeight.bold)
                          ),
                          trailing: Icon(Icons.schedule,color: Colors.blue,),
                           
                          ),
                        );
                      
                    },
                  ));
      },
    ); 
  
  }
}