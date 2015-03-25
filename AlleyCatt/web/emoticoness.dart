import 'dart:html';
import 'dart:convert';

class Emoticon {
  Map emojiMap;

  void handleError(e) {
    print('There was a ${e.runtimeType} error');
    print(e.message);
  }

  Emoticon() {
    HttpRequest.getString('emoticon.config').then((myjson) {
      Map data = JSON.decode(myjson);
      emojiMap = data["emoticon_list"];
    });
  }


  DivElement inplaceEmoji(DivElement divElement) {
    String str = divElement.text.toString();
    int start = str.indexOf("\(");
    int end = str.indexOf("\)");
    String replaceString = str.substring(start + 1, end);
    if (emojiMap.containsKey(replaceString)) {
      ImageElement emoji = new ImageElement();
      emoji.setAttribute("src", emojiMap[replaceString]);
      emoji.setAttribute("width", "30");
      divElement.text = "";
      divElement.appendText(str.substring(0, start));
      divElement.append(emoji);
      divElement.appendText(str.substring(end + 1, str.length));
    }
    return divElement;
  }
}