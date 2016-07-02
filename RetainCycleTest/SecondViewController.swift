//
//  SecondViewController.swift
//  RetainCycleTest
//
//  Created by BJ Miller on 7/2/16.
//  Copyright © 2016 Six Five Software, LLC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
//  var cat: Cat!

  var someHandler: ((Cat) -> Void) = { _ in }
  var printColor: (() -> Void)!

  func inject(cat: Cat) {
//    self.cat = cat
    printColor = { //[unowned coolcat = cat] in
      print(cat.color)
    }

    cat.viewController = self
  }

  @IBAction func buttTapped(sender: UIButton) {
//    someHandler(cat)
    printColor()
    print("")
    
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    print("in viewDidLoad")
  }
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("in viewWillAppear")
  }

}
