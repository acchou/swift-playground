//: [Previous](@previous)

import UIKit
import PlaygroundSupport

let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)

let background = UIViewController()
background.view = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
background.view.backgroundColor = UIColor.white

PlaygroundPage.current.liveView = background
background.present(alert, animated: true)

alert.dismiss(animated: true)

//: [Next](@next)
