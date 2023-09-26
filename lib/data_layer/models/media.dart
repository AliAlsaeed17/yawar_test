class Media {
  int id;
  String modelType;
  int modelId;
  String srcUrl;
  dynamic srcIcon;
  dynamic srcThum;
  String collectionName;
  String fullPath;
  String mediaType;
  String mimeType;
  int size;
  int width;
  int height;
  String createdAt;
  String updatedAt;
  dynamic saved;

  Media({
    required this.id,
    required this.modelType,
    required this.modelId,
    required this.srcUrl,
    required this.srcIcon,
    required this.srcThum,
    required this.collectionName,
    required this.fullPath,
    required this.mediaType,
    required this.mimeType,
    required this.size,
    required this.width,
    required this.height,
    required this.createdAt,
    required this.updatedAt,
    required this.saved,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        id: json["id"],
        modelType: json["model_type"],
        modelId: json["model_id"],
        srcUrl: json["src_url"],
        srcIcon: json["src_icon"],
        srcThum: json["src_thum"],
        collectionName: json["collection_name"],
        fullPath: json["fullPath"] ?? '',
        mediaType: json["media_type"],
        mimeType: json["mime_type"],
        size: json["size"],
        width: json["width"],
        height: json["height"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        saved: json["saved"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "model_type": modelType,
        "model_id": modelId,
        "src_url": srcUrl,
        "src_icon": srcIcon,
        "src_thum": srcThum,
        "collection_name": collectionName,
        "fullPath": fullPath,
        "media_type": mediaType,
        "mime_type": mimeType,
        "size": size,
        "width": width,
        "height": height,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "saved": saved,
      };
}
