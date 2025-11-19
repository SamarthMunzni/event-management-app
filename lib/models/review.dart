class Review {
  final String id;
  final String eventId;
  final String reviewerId;
  final String revieweeId;
  final int rating;
  final String? comment;

  Review({
    required this.id,
    required this.eventId,
    required this.reviewerId,
    required this.revieweeId,
    required this.rating,
    this.comment,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      id: json['id'] as String,
      eventId: json['eventId'] as String,
      reviewerId: json['reviewerId'] as String,
      revieweeId: json['revieweeId'] as String,
      rating: json['rating'] as int,
      comment: json['comment'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'eventId': eventId,
      'reviewerId': reviewerId,
      'revieweeId': revieweeId,
      'rating': rating,
      'comment': comment,
    };
  }
}
