//
//  MapViewController.swift
//  Example
//
//  Created by Sarah Lensing on 4/10/17.
//  Copyright © 2017 Mapzen. All rights reserved.
//

import UIKit
import TangramMap

class MapViewController: TGMapViewController, TGMapViewDelegate {

  var loaded = false

  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func glkView(_ view: GLKView, drawIn rect: CGRect) {
    super.glkView(view, drawIn: rect)
    if(!loaded) {
      glClearColor(1.0, 0.0, 0.1, 1.0);
      glClear(GLbitfield(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT));
    }
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    let sceneURL = "https://tangrams.github.io/walkabout-style/walkabout-style.yaml"
    self.mapViewDelegate = self
    super.loadSceneFileAsync(sceneURL, sceneUpdates: [ TGSceneUpdate(path: "global.sdk_mapzen_api_key", value: "vector-tiles-tyHL4AY")])
  }

  func mapView(_ mapView: TGMapViewController, didLoadSceneAsync scene: String) {
    loaded = true
  }
}
