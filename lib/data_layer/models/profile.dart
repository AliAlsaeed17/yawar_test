class Profile {
  int id;
  int? userId;
  String sn;
  String firstName;
  dynamic middleName;
  String lastName;
  int? gender;
  bool isBlocked;
  dynamic blockedUntil;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? lastSeen;
  String name;
  bool isFriend;
  dynamic mutualfriendsCount;
  bool? screenBlock;
  bool hasMediaProfile;
  bool hasMediaCover;
  List<dynamic> media;

  Profile({
    required this.id,
    required this.userId,
    required this.sn,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.gender,
    required this.isBlocked,
    required this.blockedUntil,
    required this.createdAt,
    required this.updatedAt,
    required this.lastSeen,
    required this.name,
    required this.isFriend,
    required this.mutualfriendsCount,
    required this.screenBlock,
    required this.hasMediaProfile,
    required this.hasMediaCover,
    required this.media,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        userId: json["user_id"],
        sn: json["sn"] ?? '',
        firstName: json["first_name"] ?? '',
        middleName: json["middle_name"] ?? '',
        lastName: json["last_name"] ?? '',
        gender: json["gender"],
        isBlocked: json["isBlocked"],
        blockedUntil: json["blocked_until"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        lastSeen: json["last_seen"] != null
            ? DateTime.parse(json["last_seen"])
            : null,
        name: json["name"],
        isFriend: json["is_friend"] != null ? true : false,
        mutualfriendsCount: json["mutualfriends_count"],
        screenBlock: json["screen_block"],
        hasMediaProfile: json["has_media_profile"],
        hasMediaCover: json["has_media_cover"],
        media: List<dynamic>.from(json["media"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "sn": sn,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "gender": gender,
        "isBlocked": isBlocked,
        "blocked_until": blockedUntil,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "last_seen": lastSeen != null ? lastSeen!.toIso8601String() : Null,
        "name": name,
        "is_friend": isFriend,
        "mutualfriends_count": mutualfriendsCount,
        "screen_block": screenBlock,
        "has_media_profile": hasMediaProfile,
        "has_media_cover": hasMediaCover,
        "media": List<dynamic>.from(media.map((x) => x)),
      };
}
