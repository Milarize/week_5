import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:my_contact/contact.dart';

class ContactModel extends ChangeNotifier {
  final List<Contact> _items = [];
  Contact _currentContact = Contact(id: -1, name: '', email: '', phone: '');
  UnmodifiableListView<Contact> get items => UnmodifiableListView(_items);
  Contact get currentContact => _currentContact;
  void setCurrentContact(Contact? contact) {
    if (contact == null) {
      _currentContact = Contact(id: -1, name: '', email: '', phone: '');
    } else {
      _currentContact = Contact(
          id: contact.id,
          name: contact.name,
          email: contact.email,
          phone: contact.phone);
    }
    notifyListeners();
  }
}
