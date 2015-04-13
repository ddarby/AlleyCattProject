import 'dart:html';
import 'dart:convert';
import 'piece.dart';

class PieceSwitcher {
  Piece _header;
  Piece _current;
  Piece _footer;
  List<Piece> _piece;
  String _replacePieceId;
  Element _pieceHolder;

  PieceSwitcher(String replacePieceId) {
    this._replacePieceId = replacePieceId;
    this._pieceHolder = querySelector(replacePieceId);
  }

  void defaultPiece(Piece view) {

  }

  void switchPieces(Piece piece) {
    //TODO: Consider Animated Wipe Here instead of hard replace.
    clearPiece();
    HttpRequest.getString(piece.location()).asStream().transform(
        new LineSplitter()).forEach((line) => addingLineByLine(line));
  }

  void addingLineByLine(String line) {
    this._pieceHolder.appendHtml(line);
  }

  void clearPiece() {
    this._pieceHolder.children.clear();
  }
}