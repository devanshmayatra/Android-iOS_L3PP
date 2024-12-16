import 'package:flutter/material.dart';

class ContactViewModel extends ChangeNotifier {
  final _nameTextController = TextEditingController();
  final _numberTextController = TextEditingController();
  final _emailTextController = TextEditingController();

  TextEditingController get nameTextController => _nameTextController;
  TextEditingController get numberTextController => _numberTextController;
  TextEditingController get emailTextController => _emailTextController;

  final List _contacts = [];

  List get contacts => _contacts;

  void addTodoItem(String name, String number, String email) {
    if (name != "" || number != "" || email != "") {
      _contacts.add({'name': name, 'number': number, 'email': email});
      _nameTextController.clear();
      _numberTextController.clear();
      _emailTextController.clear();
    }
    notifyListeners();
  }

  void removeTodoItem(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }

  void updateContact(int index, String name, String number, String email) {
    if (name == "") {
      _contacts[index]['name'] = _contacts[index]['name'];
    } else {
      _contacts[index]['name'] = name;
    }
    if (number == "") {
      _contacts[index]['number'] = _contacts[index]['number'];
    } else {
      _contacts[index]['number'] = number;
    }
    if (email == "") {
      _contacts[index]['email'] = _contacts[index]['email'];
    } else {
      _contacts[index]['email'] = email;
    }

    _nameTextController.clear();
    _numberTextController.clear();
    _emailTextController.clear();
    notifyListeners();
  }
}
