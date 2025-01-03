import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textEditingController = TextEditingController();
  String _name = "" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Xin chào ${_name}" , ),
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter name"
                ),
              ),
              SizedBox(height: 20,) ,
              TextButton(
                  onPressed: (){
                    setState(() {
                      _name = textEditingController.text ;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  ),
                  child: Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    child: const Text(
                      "Click" ,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  )
              )
            ],
          ),
        )
      ),
    );
  }
}
