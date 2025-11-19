class Event {
  final String id;
  final String title;
  final String description;
  final String category;
  final DateTime date;
  final Duration duration;
  final String location;
  final String visibility;
  final int maxParticipants;
  final String hostId;
  final List<String> participants;
  final List<String> joinRequests;
  final String chatId;

  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.date,
    required this.duration,
    required this.location,
    required this.visibility,
    required this.maxParticipants,
    required this.hostId,
    required this.participants,
    required this.joinRequests,
    required this.chatId,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      date: DateTime.parse(json['date'] as String),
      duration: Duration(minutes: json['duration'] as int),
      location: json['location'] as String,
      visibility: json['visibility'] as String,
      maxParticipants: json['maxParticipants'] as int,
      hostId: json['hostId'] as String,
      participants: List<String>.from(json['participants'] ?? []),
      joinRequests: List<String>.from(json['joinRequests'] ?? []),
      chatId: json['chatId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'date': date.toIso8601String(),
      'duration': duration.inMinutes,
      'location': location,
      'visibility': visibility,
      'maxParticipants': maxParticipants,
      'hostId': hostId,
      'participants': participants,
      'joinRequests': joinRequests,
      'chatId': chatId,
    };
  }
}
