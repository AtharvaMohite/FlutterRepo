// ignore: file_names
class LoginModel {
  String username;
  LoginModel({required this.username});

  Map<String, dynamic> toMap() {
    return {"username": username};
  }
}
