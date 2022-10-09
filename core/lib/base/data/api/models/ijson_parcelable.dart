

abstract class IJsonParcelable {
  Map<String, dynamic> toJson();

  IJsonParcelable.fromJson(Map<String, dynamic> json);
}