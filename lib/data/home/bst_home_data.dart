import 'package:mcomestic/domain/repositories/home/response/banner_response.dart';

class HomeBSTData {
  HomeBSTData._internal();
  static final instance = HomeBSTData._internal();
  Future<List<DataCollections>> getStates() async {
    return bsts
        .map((map) => DataCollections.fromJson(map))
        .toList();
  }
  List<Map<String,dynamic>> bsts = [
    <String,dynamic>{
      "id": 0,
      "images": [
        'https://bigone.vn/uploads/images/body-cosmetic.jpg',
        'https://bigone.vn/uploads/images/body-cosmetic.jpg',
        'https://bigone.vn/uploads/images/body-cosmetic.jpg',
        'https://bigone.vn/uploads/images/body-cosmetic.jpg',
        'https://bigone.vn/uploads/images/body-cosmetic.jpg',
      ],//thay vào link này
      "desc": <String,dynamic>{
      },
    },
    <String,dynamic>{
      "id": 0,
      "images": [
        'https://bigone.vn/uploads/images/faces-cosmetic.jpg',
        'https://bigone.vn/uploads/images/faces-cosmetic.jpg',
        'https://bigone.vn/uploads/images/faces-cosmetic.jpg',
        'https://bigone.vn/uploads/images/faces-cosmetic.jpg',
        'https://bigone.vn/uploads/images/faces-cosmetic.jpg',
      ],//thay vào link này
      "desc": <String,dynamic>{
      },
    }

  ];
}

class DataCollections {
  int? id;
  Desc? desc;
  List<String>? images;

  DataCollections({this.id, this.desc, this.images});

  DataCollections.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    images = json['images'];
    desc = json['desc'] != null ? new Desc.fromJson(json['desc']) : null;
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