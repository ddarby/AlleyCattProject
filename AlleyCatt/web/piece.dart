import "dart:html";

class Piece {

  Piece(String location, String label, String icon);

  bool toggleState();

  bool keepState();

  String location();

  String label();

  String icon();

  int get hashCode;

  void registerEventListeners();
}