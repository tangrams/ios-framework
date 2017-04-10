//
//  MapViewController.swift
//  Example
//
//  Created by Sarah Lensing on 4/10/17.
//  Copyright © 2017 Mapzen. All rights reserved.
//

import UIKit
import TangramMap

class MapViewController: TGMapViewController {

  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewWillAppear(_ animated: Bool) {
    let sceneURL = "https://tangrams.github.io/walkabout-style/walkabout-style.yaml"
    super.loadSceneFileAsync(sceneURL, sceneUpdates: [ TGSceneUpdate(path: "global.sdk_mapzen_api_key", value: "vector-tiles-tyHL4AY") ])
  }

}
