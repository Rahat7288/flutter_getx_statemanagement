class LoginResponseModel {
  LoginResponseModel({
      this.token,});

  LoginResponseModel.fromJson(dynamic json) {
    token = json['token'];
  }
  String? token;
LoginResponseModel copyWith({  String? token,
}) => LoginResponseModel(  token: token ?? this.token,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }

}