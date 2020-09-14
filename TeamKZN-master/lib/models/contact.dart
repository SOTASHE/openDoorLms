/*
Model for a contact on student messaging function
 */

//Should inherist from a "user", model once created
class Contact {
  String _userName;
  String _profile;
  String _role;   //Teacher or student

  Contact({userName, profile, role}){
    this._userName = userName;
    this._profile  = profile;
    this._role = role;
  }

  String getUserName(){
    return this._userName;
  }

  String getProfile(){
    return this._profile;
  }

  String getRole(){
    return this._role;
  }


  static List<Contact> fetchAll(){
      return [
        Contact(userName: "James Jackson", role: "Student GR12A"),
        Contact(userName: "Snakho Gamndani", role: "Student GR12A"),
        Contact(userName: "Lewis Cele", role: "Student GR12A"),
      ];
  }
}