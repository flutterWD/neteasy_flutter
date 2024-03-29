// GridNavItem hotel	Object	NonNull
// GridNavItem flight	Object	NonNull
// GridNavItem travel	Object	NonNull

//  首页网格卡片模型
import 'package:chak/model/common_model.dart';

class GridNavModel {
  final GridNavItem hotel;
  final GridNavItem flight;
  final GridNavItem travel;
  GridNavModel({this.hotel, this.flight, this.travel});
  factory GridNavModel.fromJson(Map<String, dynamic> json) {
    return json != null ? GridNavModel(
      hotel: GridNavItem.fromJson(json['hotel']),
      flight: GridNavItem.fromJson(json['flight']),
      travel: GridNavItem.fromJson(json['travel']),
    ): null;
  }
}

// String startColor	String	NonNull
// String endColor	String	NonNull
// CommonModel mainItem	Object	NonNull
// CommonModel item1	Object	NonNull
// CommonModel item2	Object	NonNull
// CommonModel item3	Object	NonNull
// CommonModel item4	Object	NonNull

class GridNavItem {
  final String startColor;
  final String endColor;
  final CommonModel mainItem;
  final CommonModel item1;
  final CommonModel item2;
  final CommonModel item3;
  final CommonModel item4;
  GridNavItem(
      {this.startColor,
      this.endColor,
      this.mainItem,
      this.item1,
      this.item2,
      this.item3,
      this.item4});
  factory GridNavItem.fromJson(Map<String, dynamic> json) {
    return GridNavItem(
      startColor: json['startColor'],
      endColor: json['endColor'],
      mainItem: json['mainItem'],
      item1: json['item1'],
      item2: json['item2'],
      item3: json['item3'],
      item4: json['item4'],
    );
  }
}
