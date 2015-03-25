import "dart:html";
import "emoticoness.dart";

class ChatHandler {
  TextAreaElement userInputMessage;
  Emoticon emoticon;

  ChatHandler() {
    emoticon = new Emoticon();
    userInputMessage = new TextAreaElement();
    userInputMessage = querySelector("#user_chat_message_input");

    window.onKeyDown.listen((KeyboardEvent e) {
      if (e.keyCode == KeyCode.ENTER) {
        appendToChatRoom();
      }
    });
    window.onKeyUp.listen((KeyboardEvent e) {
      if (e.keyCode == KeyCode.ENTER) {
        userInputMessage.value = "";
      }
    });
  }


  void appendToChatRoom() {
    //if (userInputMessage.text != "") {

    var chatRoomBody = querySelector("#catt_chat_body");
    //Maybe add this for newline characters ? ? new BRElement());

    var divMediaElement = new DivElement();
    divMediaElement.setAttribute("class", "media");

    var imageElement = new ImageElement();
    imageElement.setAttribute("class", "pull-left");
    imageElement.setAttribute("src", "images/profile-pics/1.jpg");
    imageElement.setAttribute("width", "30");

    var divMediaBodyElement = new DivElement();
    divMediaBodyElement.setAttribute("class", "media-body pull-left");
    divMediaBodyElement.children.add(imageElement);
    String userInput = userInputMessage.value;

    DivElement userDiv = new DivElement();
    userDiv.text = userInput;

    DivElement newDiv = emoticon.inplaceEmoji(userDiv);

    divMediaBodyElement.children.add(newDiv);
    var smallTag = new Element.tag("small");
    smallTag.appendText(new DateTime.now().toString());
    divMediaBodyElement.children.add(smallTag);

    divMediaElement.children.add(divMediaBodyElement);

    chatRoomBody.children.add(divMediaElement);

    chatRoomBody.scrollTop = chatRoomBody.scrollHeight;

  }
}