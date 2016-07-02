//
//  ViewController.swift
//  RetainCycleTest
//
//  Created by BJ Miller on 7/2/16.
//  Copyright © 2016 Six Five Software, LLC. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
  let cat = Cat(color: .orange)

  func doSomething(with cat: Cat) {
    print("\(cat)")
  }

  @IBOutlet var butt: UIButton!
}

//MARK: internal
extension ViewController {

  override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
    guard let destination = segue.destinationViewController as? SecondViewController else { fatalError() }
    destination.inject(cat: cat)
    destination.someHandler = { _cat in self.doSomething(with: _cat) }
  }
}
