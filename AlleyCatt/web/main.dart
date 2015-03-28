// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'video.dart';
import 'emoticoness.dart';
import 'chathandler.dart';
import 'pieceswitcher.dart';
import 'piece.dart';
import 'dart:html';
import 'sidepane.dart';

void main() {
  //new VideoThrower();
  LinkElement element = querySelector("#test");
  HtmlDocument doc = element.import;
  print(doc.firstChild.toString());

  Piece typographyHtml = new Piece("view-typography.html", "Typography", "sa-side-home");
  Piece chartHtml = new Piece("view-charts.html", "Charts", "sa-side-home");
  Piece componentsHtml = new Piece("view-components.html", "Components", "sa-side-home");

//  switcher.switchPieces(typographyHtml);
  UListElement rootSidePane = querySelector("#root-side-pane");
  SidePane leftPane = new SidePane(rootSidePane);
//<a class="sa-side-home" href="index.html">
  //TODO: Make CssClassSets for elements to begin migration from JS.
  leftPane.addPiece(typographyHtml);
  leftPane.addPiece(chartHtml);
  leftPane.addPiece(componentsHtml);
  leftPane.implodePane();
  leftPane.explodePane();
}


