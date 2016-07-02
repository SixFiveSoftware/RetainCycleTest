import UIKit

final class Cat {
  let color: Color

  init(color: Color) {
    self.color = color
  }

  weak var viewController: UIViewController?
}

extension Cat {
  enum Color {
    case
    black,
    gray,
    orange
  }
}
