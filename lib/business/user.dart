
class User {

  int id;
  String mobileNumber;
  String email;
  String name;
  String nickname;

  static User _singleton = new User._internal();
  
  factory User() => _singleton;

  User._internal() {
    this.id = 0;
    this.email = 'lijiakof@gmail.com';
    this.nickname = 'Jay';
  }

}