import 'dart:html';
import 'package:dnd/dnd.dart';

abstract class Module {
  String getDroppableHtml();

  LIElement getListableHtml();

  void setDroppableHtml(String droppableElement);

  void setListableHtml(LIElement listableElement);

  void setDroppableElement(DropzoneEvent event);

}