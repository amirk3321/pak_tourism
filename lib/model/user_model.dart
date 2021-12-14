class UserModel
{
  String? uid;
  String? password;
  String? email;
  String? firstName;
  String? secondName;


  UserModel({this.uid,this.password, this.email, this.firstName, this.secondName,});

//recieving  data from server
factory UserModel.fromMap(map){
  return UserModel(
    uid: map['uid'],
    email: map['email'],
    firstName: map['first name'],
    secondName: map['second name'],
  );
}
// sending data to server

Map<String,  dynamic> toMap(){
  return{
    'uid': uid,
    'email': email,
    'firstname': firstName,
    'secondname': secondName,
  };
}

}