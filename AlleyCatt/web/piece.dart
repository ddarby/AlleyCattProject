import "dart:html";

class Piece {
  String _location;
  Element _loadedElement;
  String _label;
  String _icon;

  //For  maintaining states
  bool _keepState;

  Piece(String location, String label, String icon) {
    this._location = location;
    this._label = label;
    this._icon = icon;
    this._keepState = false;
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