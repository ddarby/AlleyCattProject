import "dart:html";
import "piece.dart";

class AnimeVideoPiece implements Piece {
  String _location;
  Element _loadedElement;
  String _label;
  String _icon;

  //For  maintaining states
  bool _keepState;

  AnimeVideoPiece(String location, String label, String icon) {
    this._location = location;
    this._label = label;
    this._icon = icon;
    this._keepState = false;


    print("this is called");
  }

  /**
   * This method is assuming page has not been loaded
   * therefore querySelector will return nothing,
   * so register after page has been loaded
   */
  void registerEventListeners() {
    ButtonElement playVideoButton = querySelector("#play_video_button");
    playVideoButton.addEventListener('click', (event) => playVideoWithUserInput(), false);
  }

  void playVideoWithUserInput() {
    var userUrlInput = querySelector("#video_url_input");
    var videoWrapper = querySelector("#video_wrapper");
    videoWrapper.children.clear();
    var videoElement = new VideoElement();
    videoElement.poster = "images/media-player/media-player-poster.jpg";
    videoElement.src = userUrlInput.value;
    videoElement.setAttribute("height", "100%");
    videoElement.setAttribute("width", "100%");
    videoElement.setAttribute("type", "video/mp4");
    videoElement.setAttribute("controls", "controls");
    videoElement.setAttribute("class", ".mejs-container .mejs-controls");
    videoWrapper.append(videoElement);
  }

  bool toggleState() {
    keepState = !keepState;
    return keepState;
  }

  bool keepState() {
    return keepState;
  }

  String location() {
    return this._location;
  }

  String label() {
    return this._label;
  }

  String icon() {
    return this._icon;
  }

  int get hashCode {
    int result = 17;
    result = 37 * result + _location.hashCode;
    result = 37 * result + _keepState.hashCode;
    return result;
  }
}