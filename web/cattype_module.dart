import 'dart:html';
import 'module.dart';
import 'package:dnd/dnd.dart';

class CatTypeModule implements Module {
  String _listId;
  String _droppableHtml;
  LIElement _listableElement;
  bool _isSingleton;
  bool _isActive;

  CatTypeModule() {
    this._listId = "cattype_list_id";
    this._isActive = false;
    this._isSingleton = false;
    this._droppableHtml = "<div><input/><input/><input/><input/></div>";
    this._listableElement = new Element.html("<li class='_group grabbable'><a href='#'><span class='glyphicon glyphicon-plus pull-left'></span> <i class=''>CatType</i></a></li>");
    this._listableElement.id = this._listId;
    //Needed to install draggable
    new Draggable(this._listableElement);
  }

  void setDroppableElementListener(DropzoneEvent event) {
    event.dropzoneElement.children.clear();
    event.dropzoneElement.children.add(new Element.html(this._droppableHtml));
  }

  LIElement getListableLIElement() {
    return this._listableElement;
  }

  String getDroppableHtml() {
    return this._droppableHtml;
  }

  String getName() {
    return this._listId;
  }
}