/*
A current User profile model
 */

class User {
  String _userName;
  String _userGrade;
  String _userImage;
  String _userSchool;

  PersonalInfo _personalInfo;
  AcademicInfo _academicInfo;
  GameInfo _gameInfo;

  User({userName, userGrade, userImage, userSchool,
      personalInfo, academicInfo, gameInfo}){

    this._userName  = userName;
    this._userGrade = userGrade;
    this._userImage = userImage;
    this._userSchool = userSchool;

    this._personalInfo = personalInfo;
    this._academicInfo = academicInfo;
    this._gameInfo = gameInfo;
  }

  String getUserName() => this._userName;
  String getUserGrade() => this._userGrade;
  String getUserImage() => this._userImage;
  String getUserSchool() => this._userSchool;
  PersonalInfo getPersonalInfo() => this._personalInfo;
  AcademicInfo getAcademicInfo() => this._academicInfo;
  GameInfo getGameInfo() => this._gameInfo;

  static User fetchUser(){
    return User(
      userName: "Cebo Sithole",
      userImage: "assets/users_images/cebo.jpg",
      userGrade: "12",
      userSchool: "Is'funulwazi High School",
      personalInfo: null,
      academicInfo: null,
      gameInfo: null,
    );
}
}

class GameInfo {
}

class AcademicInfo {
}

class PersonalInfo {
}