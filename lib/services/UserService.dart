import 'dart:async';
import 'package:accident_report_app/db_helper/repository.dart';
import 'package:accident_report_app/model/Accident.dart';



class UserService
{
  late Repository _repository;
  UserService(){
    _repository = Repository();
  }
  //Save User
  SaveUser(AccidentReport user) async{
    return await _repository.insertData('users', user.accidentMap());
  }
  //Read All Users
  readAllUsers() async{
    return await _repository.readData('users');
  }
  //Edit User
  UpdateUser(AccidentReport user) async{
    return await _repository.updateData('users', user.accidentMap());
  }

  deleteUser(userId) async {
    return await _repository.deleteDataById('users', userId);
  }

}