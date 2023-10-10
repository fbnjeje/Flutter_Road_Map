import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    return Message(
        text: response.data['answer'],
        fromWho: FromWho.hers,
        imageUrl: response.data['image']);
  }
}
