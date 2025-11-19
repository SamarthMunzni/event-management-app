import 'package:cloud_firestore/cloud_firestore.dart';

class ReviewService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addReview(String eventId, String reviewerId, String revieweeId, int rating, String comment) async {
    await _db.collection('reviews').add({
      'eventId': eventId,
      'reviewerId': reviewerId,
      'revieweeId': revieweeId,
      'rating': rating,
      'comment': comment,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getReviewsForUser(String userId) {
    return _db.collection('reviews').where('revieweeId', isEqualTo: userId).snapshots();
  }

  Stream<QuerySnapshot> getReviewsForEvent(String eventId) {
    return _db.collection('reviews').where('eventId', isEqualTo: eventId).snapshots();
  }
}
