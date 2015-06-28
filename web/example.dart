import 'dart:html';
import 'package:dnd/dnd.dart';
import 'feline_module.dart';
import 'cattype_module.dart';
import 'module.dart';

/// A basic example of how to use [Draggable]s and [Dropzone]s together.
main() {
  UListElement sideBarUL = document.querySelector(".sidebar-nav");
  Dropzone dropzone = new Dropzone(querySelectorAll('.dropzone'));
  var modules = new List<Module>();

  FelineModule felineModule = new FelineModule();
  CatTypeModule catTypeModule = new CatTypeModule();

  sideBarUL.children.add(felineModule.getListableLIElement());
  sideBarUL.children.add(catTypeModule.getListableLIElement());
  modules.add(felineModule);
  modules.add(catTypeModule);

  for (Module module in modules) {
    dropzone.onDrop.listen(module.setDroppableElementListener);
  }
}


