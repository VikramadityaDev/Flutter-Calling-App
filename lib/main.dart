import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(const MaterialApp(
    home: caller(),
  ));
}

class caller extends StatefulWidget {
  const caller({Key? key}) : super(key: key);

  @override
  State<caller> createState() => _callerState();
}

class _callerState extends State<caller> {
  String supportCall = "5555546414";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Caller"),
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber(supportCall);
            }, child: Text("Support Call")),
            Text("hdjhjd"),
          ],
        ),

      ),
    );
  }
}