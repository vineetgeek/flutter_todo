import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Note {
  late int _id;
  late String _title;
  late String _description;
  late String _date;
  late int _priority;

  Note(this._date, this._priority, this._title, this._description);
  Note.withid(
      this._id, this._date, this._priority, this._title, this._description);

// all the getters
  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  // all the setter

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  //used to save and retrive form database

  //convert to map method
  Map<String, dynamic> get toMap {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }

    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;

    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._date = map['date'];
    this._description = map['description'];
    this._title = map['title'];
    this._priority = map['priority'];
  }
}
