//
//  ViewController.swift
//  Example
//
//  Created by Karim Naaji on 4/7/17.
//  Copyright © 2017 Mapzen. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let vc1 = MapViewController.init()
    let vc2 = MapViewController.init()
    self.viewControllers = [vc1, vc2]

    self.tabBar.items?[0].title = "Map 1"
    self.tabBar.items?[1].title = "Map 2"
  }

}
