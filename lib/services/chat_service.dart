import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getMessages(String chatId) {
    return _db
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy('timestamp')
        .snapshots();
  }

  Future<void> sendMessage(String chatId, String senderId, String content, String type) async {
    await _db.collection('chats').doc(chatId).collection('messages').add({
      'senderId': senderId,
      'content': content,
      'type': type,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}
