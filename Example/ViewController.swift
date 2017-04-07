//
//  ViewController.swift
//  Example
//
//  Created by Karim Naaji on 4/7/17.
//  Copyright © 2017 Mapzen. All rights reserved.
//

import UIKit
import TangramMap

class ViewController: TGMapViewController {

    override func viewWillAppear(_ animated: Bool) {
        let sceneURL = "https://tangrams.github.io/walkabout-style/walkabout-style.yaml"
        super.loadSceneFileAsync(sceneURL, sceneUpdates: [ TGSceneUpdate(path: "global.sdk_mapzen_api_key", value: "vector-tiles-tyHL4AY") ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

