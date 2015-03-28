import 'dart:html';
import 'piece.dart';
import 'pieceswitcher.dart';


class SidePane {
  UListElement _rootSidePane;
  Map<Piece, AnchorElement> _pieceMap;
  PieceSwitcher _switcher;

  SidePane(UListElement rootSidePane) {
    this._rootSidePane = rootSidePane;
    this._pieceMap = new Map<Piece, AnchorElement>();
    this._switcher = new PieceSwitcher("#main-body");
  }

  void addPiece(Piece piece) {
    AnchorElement anchor = new AnchorElement();
    anchor.attributes = ({
        "href":"#",
        "class":piece.icon()
    });
    this._pieceMap[piece] = anchor;
  }

  void implodePane() {
    _rootSidePane.children.clear();
  }

  void explodePane() {
    for (Piece key in this._pieceMap.keys) {
      this._rootSidePane.children.add(this.createItem(key.label(), _pieceMap[key]));
      _pieceMap[key].onClick.listen(
              (MouseEvent) => this._switcher.switchPieces(key));
    }
  }

  LIElement createItem(String label, AnchorElement anchor) {
    LIElement liElement = new LIElement();
    SpanElement spanElement = new SpanElement();
    spanElement.className = "menu-item";
    spanElement.text = label;
    liElement.children.add(anchor);
    liElement.children.add(spanElement);
    return liElement;
  }
}
//<li>
//  <a id="view-charts" class="sa-side-chart" href="#">
//    <span class="menu-item">Charts</span>
//  </a>
//</li>