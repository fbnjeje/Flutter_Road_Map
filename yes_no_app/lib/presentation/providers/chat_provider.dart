import 'package:flutter/material.dart';

import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'hola amor!', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo???', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    // TODO: implementar metodo

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
