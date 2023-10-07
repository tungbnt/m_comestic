class ResponseBST {
  bool? success;
  int? code;
  String? message;
  Collections? data;
  ResponseBST({this.success, this.code, this.message, this.data});

  ResponseBST.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Collections.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = success;
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Collections {
  Collections({this.collections});
  List<DataCollections>? collections;

  Collections.fromJson(Map<String, dynamic> json) {
    if (json['collections'] != null) {
      collections = <DataCollections>[];
      json['collections'].forEach((v) {
        collections!.add(DataCollections.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (collections != null) {
      data['categories'] = collections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataCollections {
  int? id;
  Desc? desc;
  List<String>? images;

  DataCollections({this.id, this.desc, this.images});

  DataCollections.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    desc = json['desc'] != null ? new Desc.fromJson(json['desc']) : null;
    if (json['images'] != null) {
      images = <String>[];
      json['images'].forEach((v) {
        images!.add(v.toString());
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    if (desc != null) {
      data['desc'] = desc!.toJson();
    }
    data['images'] = images;
    return data;
  }
}

class Desc {
  int? id;
  int? collectionId;
  int? languageId;
  String? name;
  dynamic shortDescription;
  dynamic metaTitle;
  dynamic metaDescription;
  dynamic metaKeyword;
  dynamic createdAt;
  dynamic updatedAt;

  Desc(
      {this.id,
      this.collectionId,
      this.languageId,
      this.name,
      this.shortDescription,
      this.metaTitle,
      this.metaDescription,
      this.metaKeyword,
      this.createdAt,
      this.updatedAt});

  Desc.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    collectionId = json['collection_id'];
    languageId = json['language_id'];
    name = json['name'];
    shortDescription = json['short_description'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeyword = json['meta_keyword'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['collection_id'] = collectionId;
    data['language_id'] = languageId;
    data['name'] = name;
    data['short_description'] = shortDescription;
    data['meta_title'] = metaTitle;
    data['meta_description'] = metaDescription;
    data['meta_keyword'] = metaKeyword;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
