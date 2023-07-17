

import 'package:accident_report_app/model/Accident.dart';
import 'package:accident_report_app/services/UserService.dart';
import 'package:accident_report_app/screens/viewAccident.dart';
import 'package:flutter/material.dart';


class view extends StatelessWidget {
  const view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<AccidentReport> _userList = <AccidentReport>[];
  final _userService = UserService();

  getAllUserDetails() async {
    var users = await _userService.readAllUsers();
    _userList = <AccidentReport>[];
    users.forEach((user) {
      setState(() {
        var userModel = AccidentReport();
        userModel.id = user['id'];
        userModel.name = user['name'];
        userModel.contact = user['contact'];
        userModel.location = user['location'];
        userModel.date = user['date'];
        userModel.time = user['time'];
        userModel.description = user['description'];
        _userList.add(userModel);
      });
    });
  }

  @override
  void initState() {
    getAllUserDetails();
    super.initState();
  }

  _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
          itemCount: _userList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewUser(
                            user: _userList[index],
                          )));
                },
                title: Text(_userList[index].name ?? '' ),
                subtitle: Text(_userList[index].location ?? ''),

                trailing: Row(
                  mainAxisSize: MainAxisSize.min,

                ),
              ),

            );
          }),

    );
  }

}








