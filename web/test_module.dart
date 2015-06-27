import 'dart:html';
import 'module.dart';
import 'package:dnd/dnd.dart';


class TestModule implements Module {
  String _droppableElement;
  Element _grabbableElement;
  LIElement _listableElement;
  bool _isSingleton;
  bool _isActive;

  TestModule() {
    this._isActive = false;
    this._isSingleton = false;
  }

  String getDroppableHtml() {
    return this._droppableElement;
  }

  Element getGrabbableElement() {
    return this._grabbableElement;
  }

  LIElement getListableHtml() {
    return  this._listableElement;
  }

  void setDroppableHtml(String droppableElement) {
    this._droppableElement = droppableElement;
  }

  void setGrabbableHtml(String grabbableElement) {
    this._grabbableElement = new Element.html(grabbableElement);

    new Draggable(this._grabbableElement);

    UListElement sideBarUL = document.querySelector(".sidebar-nav");
    sideBarUL.children.add(this._grabbableElement);
  }

  void setListableHtml(LIElement listableElement) {
    this._listableElement = listableElement;
  }

  void setDroppableElement(DropzoneEvent event) {
    event.dropzoneElement.children.clear();
    event.dropzoneElement.children.add(new Element.html(this._droppableElement));
  }
}