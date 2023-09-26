import 'package:yawar_test/data_layer/models/interactions_count_types.dart';
import 'package:yawar_test/data_layer/models/media.dart';
import 'package:yawar_test/data_layer/models/profile.dart';

class Post {
  int? id;
  int? userId;
  dynamic parentId;
  String? modelType;
  int? modelId;
  String? content;
  int? index;
  int? status;
  int? type;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? interactionsCount;
  InteractionsCountTypes? interactionsCountTypes;
  int? commentsCount;
  int? sharesCount;
  int? tagsCount;
  bool? sharingPost;
  bool? hasMedia;
  dynamic saved;
  dynamic taged;
  Profile? profile;
  List<Media>? media;
  List<dynamic>? tags;
  dynamic parent;
  String? name;
  int? founded;
  List<String>? members;

  Post({
    this.id,
    this.userId,
    this.parentId,
    this.modelType,
    this.modelId,
    this.content,
    this.index,
    this.status,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.interactionsCount,
    this.interactionsCountTypes,
    this.commentsCount,
    this.sharesCount,
    this.tagsCount,
    this.sharingPost,
    this.hasMedia,
    this.saved,
    this.taged,
    this.profile,
    this.media,
    this.tags,
    this.parent,
    this.name,
    this.founded,
    this.members,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        userId: json["user_id"],
        parentId: json["parent_id"],
        modelType: json["model_type"],
        modelId: json["model_id"],
        content: json["content"],
        index: json["index"],
        status: json["status"],
        type: json["type"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        interactionsCount: json["interactions_count"] ?? 0,
        interactionsCountTypes: json["interactions_count_types"] == null
            ? null
            : InteractionsCountTypes.fromJson(json["interactions_count_types"]),
        commentsCount: json["comments_count"] ?? 0,
        sharesCount: json["shares_count"] ?? 0,
        tagsCount: json["tags_count"],
        sharingPost: json["sharing_post"],
        hasMedia: json["has_media"],
        saved: json["saved"],
        taged: json["taged"],
        profile: json["model"] == null ? null : Profile.fromJson(json["model"]),
        media: json["media"] == null
            ? []
            : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
        tags: json["tags"] == null
            ? []
            : List<dynamic>.from(json["tags"]!.map((x) => x)),
        parent: json["parent"],
        name: json["name"],
        founded: json["founded"],
        members: json["members"] == null
            ? []
            : List<String>.from(json["members"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "parent_id": parentId,
        "model_type": modelType,
        "model_id": modelId,
        "content": content,
        "index": index,
        "status": status,
        "type": type,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "interactions_count": interactionsCount,
        "interactions_count_types": interactionsCountTypes?.toJson(),
        "comments_count": commentsCount,
        "shares_count": sharesCount,
        "tags_count": tagsCount,
        "sharing_post": sharingPost,
        "has_media": hasMedia,
        "saved": saved,
        "taged": taged,
        "model": profile?.toJson(),
        "media": media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "parent": parent,
        "name": name,
        "founded": founded,
        "members":
            members == null ? [] : List<dynamic>.from(members!.map((x) => x)),
      };
}
