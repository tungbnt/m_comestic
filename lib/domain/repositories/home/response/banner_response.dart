class ResponseHomeBanner {
  bool? success;
  int? code;
  String? message;
  DataBanner? data;

  ResponseHomeBanner({this.success, this.code, this.message, this.data});

  ResponseHomeBanner.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new DataBanner.fromJson(json['data']) : null;
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

class DataBanner {
  List<Banners>? banners;
  Meta? meta;

  DataBanner({this.banners, this.meta});

  DataBanner.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      banners = <Banners>[];
      json['banners'].forEach((v) {
        banners!.add(new Banners.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (banners != null) {
      data['banners'] = banners!.map((v) => v.toJson()).toList();
    }
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    return data;
  }
}

class Banners {
  int? id;
  dynamic sortOrder;
  int? isMobile;
  int? status;
  String? position;
  int? categoryId;

  /// news | collection | birth_day | webview
  String? type;
  String? publishAt;
  String? endAt;
  String? createdAt;
  String? updatedAt;
  int? objId;
  String? url;
  Desc? desc;

  Banners(
      {this.id,
      this.sortOrder,
      this.isMobile,
      this.status,
      this.position,
      this.categoryId,
      this.type,
      this.publishAt,
      this.endAt,
      this.createdAt,
      this.updatedAt,
      this.desc});

  Banners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sortOrder = json['sort_order'];
    isMobile = json['sort_order'];
    status = json['status'];
    position = json['position'];
    categoryId = json['category_id'];
    type = json['type'];
    if (json['ojb_id'] is int) {
      objId = json['ojb_id'];
    } else if (json['ojb_id'] is String) {
      url = json['ojb_id'];
    }
    publishAt = json['publish_at'];
    endAt = json['end_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    desc = json['desc'] != null ? new Desc.fromJson(json['desc']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['sort_order'] = sortOrder;
    data['is_mobile'] = isMobile;
    data['status'] = status;
    data['position'] = position;
    data['type'] = type;
    data['ojb_id'] = objId;
    data['category_id'] = categoryId;
    data['publish_at'] = publishAt;
    data['end_at'] = endAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (desc != null) {
      data['desc'] = desc!.toJson();
    }
    return data;
  }
}

class Desc {
  int? id;
  int? bannerId;
  int? languageId;
  String? name;
  dynamic shortDescription;
  String? image;
  String? link;
  String? imageSmall;
  String? imageHD;

  Desc({
    this.id,
    this.bannerId,
    this.languageId,
    this.name,
    this.shortDescription,
    this.image,
    this.link,
    this.imageSmall,
    this.imageHD,
  });

  Desc.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bannerId = json['banner_id'];
    languageId = json['language_id'];
    name = json['name'];
    shortDescription = json['short_description'];
    image = json['image'];
    link = json['link'];
    imageSmall = json['image_small'];
    imageHD = json['image_hd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['banner_id'] = bannerId;
    data['language_id'] = languageId;
    data['name'] = name;
    data['short_description'] = shortDescription;
    data['image'] = image;
    data['link'] = link;
    data['image_small'] = imageSmall;
    data['image_hd'] = imageHD;
    return data;
  }
}

class Meta {
  List<dynamic>? include;

  Meta({this.include});

  Meta.fromJson(Map<String, dynamic> json) {
    if (json['include'] != null) {
      include = <Null>[];
      json['include'].forEach((v) {
        // include!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (include != null) {
      data['include'] = include!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
