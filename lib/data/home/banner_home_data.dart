import 'package:mcomestic/domain/repositories/home/response/banner_response.dart';

class HomeBannerData {
  HomeBannerData._internal();
  static final instance = HomeBannerData._internal();
  Future<List<Banners>> getStates() async {
    return banner
      .map((map) => Banners.fromJson(map))
      .toList();
  }
  List<Map<String,dynamic>> banner= [
   <String,dynamic>{
      "id": 0,
      "sort_order": 0,
      "sort_order": 0,
      "status": 0,
      "position": 'ab',
      "type": 'ab',
      "publish_at": 'ab',
      "endAt": 'ab',
      "createdAt": 'ab',
      "updatedAt": 'ab',
      "String":'https://cosmetis.com/en/ecophane-force-volume-tablets-promotional-pack-2x60',
      "ojb_id": 'https://cosmetis.com/en/ecophane-force-volume-tablets-promotional-pack-2x60',
      "categoryId": 0,
      "objId": 0,
      "desc": <String,dynamic>{

      },

    }

];
}