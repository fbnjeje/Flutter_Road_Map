import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/Widgets/Chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/Widgets/Chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/Widgets/shared/message_field_box.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9f7c4355-9421-4e9a-9027-565efe5e6c20/db16yph-bb4d3da1-8282-43a3-b4d7-0d2075fcdf39.jpg/v1/fill/w_1192,h_670,q_70,strp/zelda_s_smile_by_zacharico_db16yph-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzIwIiwicGF0aCI6IlwvZlwvOWY3YzQzNTUtOTQyMS00ZTlhLTkwMjctNTY1ZWZlNWU2YzIwXC9kYjE2eXBoLWJiNGQzZGExLTgyODItNDNhMy1iNGQ3LTBkMjA3NWZjZGYzOS5qcGciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.pw9udnXgLFtlUunzFKyGdZco5-JMAp5t9RKB9AI9cnM'),
          ),
        ),
        title: const Text('Mi amor 💗'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];

                return (message.fromWho == FromWho.hers)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),

            //Field box

            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}




/*

* SafeArea is used to the program doesnt go out from the literal the space of the screen* 

*/