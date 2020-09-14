/*
Messages data model
 */

class Message {

  String _userName;
  String _message;
  String _profile;
  String _allMessages;
  String _timeReceived;
  String _numMessages;

  Message({userName, profile, message, time, numMessages}){
    this._userName = userName;
    this._profile = profile;
    this._message = message;
    this._timeReceived = time;
    this._numMessages = numMessages;

  }

  String getUserName(){
    return this._userName;
  }

  String getProfile(){
    return this._profile;
  }

  String getMessage(){
    return this._message;
  }

  String getTime(){
    return this._timeReceived;
  }

  String getNumMessages(){

    return this._numMessages;
  }

  String getAllMessages(){
    return this._allMessages;
  }


  static List<Message> fetchAll(){
    return [
      Message(userName: "ChatBot",
          profile: "chatbot.png",
          time: "20:30 pm",
          numMessages: "1",
          message: "Hey Bernard, How are you feeling today?"),
      Message(userName: "SADAG",
          profile: "SADAG.jpg",
          time: "20:30 pm",
          numMessages: "1",
          message: "Booking for CheckUp confirmed, Nearest councel will"),
      Message(userName: "James Jackson",
          profile: "james.png",
          time: "20:30 pm",
          numMessages: "1",
          message: "Your assignment is over due, Submit before 21 sept"),
      Message(userName: "Miss Monde",
          profile: "female_teacher.png",
          time: "20:00 pm",
          numMessages: "2",
          message: "Did you receive the news letter?"),

      Message(userName: "Sir Mhlongo",
          profile: "male_teacher.png",
          time: "12:05 pm",
          numMessages: "2",
          message: "Your presentation have been changed  for tommorrow"),


    ];
}
}