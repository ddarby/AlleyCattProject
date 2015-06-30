import 'package:dnd/dnd.dart';
import 'dart:html';

abstract class Module {
  void setDroppableElementListener(DropzoneEvent event);
  LIElement getListableLIElement();
  String getName();
  String getDroppableHtml();
}