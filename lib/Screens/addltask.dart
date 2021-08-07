import 'package:cour4task3/Providers/task.dart';
import 'package:cour4task3/Providers/tasks_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTask extends StatefulWidget {

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  bool showvalue = false;
    final myController = TextEditingController();
    int count =0;
      final List<Task> items = [
    //Task(valueText: 'laptop ', chekvalueText:true),
   // Task(valueText: 'iphone x ', chekvalueText:true),
   // Task(valueText: 'keyboard ', chekvalueText:true ),
  ];
  @override
  Widget build(BuildContext context) {
   final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("To Do List "),
      centerTitle: true,
      backgroundColor: Colors.black
      ,),
      body:  Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
              TextField(  
                  controller: myController,
          decoration: InputDecoration(  
focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 5.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 5.0),
            ),
            border: InputBorder.none,  
            //labelText: 'Enter Name',  
            hintText: 'Enter Your Task'  
          ),  

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Complate?",style: TextStyle(fontWeight: FontWeight.bold),),
        Checkbox(value:this.showvalue,
            onChanged: (bool value) {  
                            setState(() {  
                              this.showvalue = value;  
                            });
            }),
                            
            ],),
            SizedBox(height: 10,),

  Container(
   width : width,
    height: height*.1,
        child: ElevatedButton(
           
          child: Text("A D D",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
          onPressed: (){
    myController.text ;
    items.add(Task(valueText:myController.text, chekvalueText:showvalue));
    Provider.of<TasksProvider>(context,listen: false).add(items[count]);
    count++;
    print(count.toString());
    print(showvalue);
          }),
  
  ),
        ],
        
        ),
      ),
      
    );

  }
}