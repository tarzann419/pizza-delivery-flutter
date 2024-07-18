
import 'package:user_repository/src/entities/entities.dart';

class MyUser{
  String userId;
  String email;
  String name;
  // String password;
  bool hasActiveCart;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    // required this.password,
    required this.hasActiveCart,
  });

  static final empty = MyUser(
      userId: '',
      email: '',
      name: '',
      hasActiveCart: false
  );

  // transforms MyUser to MyUSerEntity - to json map for the db
  MyUserEntity toEntity(){
    return MyUserEntity(
        userId: userId,
        email: email,
        name: name,
        hasActiveCart: hasActiveCart
    );
  }

  static MyUser fromEntity(MyUserEntity entity){
    return MyUser(
        userId: entity.userId,
        email: entity.email,
        name: entity.name,
        hasActiveCart: entity.hasActiveCart
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'MyUser: $userId, $email, $name, $hasActiveCart';
  }

}