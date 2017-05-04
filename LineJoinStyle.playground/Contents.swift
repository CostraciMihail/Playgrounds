//: Playground - noun: a place where people can play

import UIKit
import CoreGraphics
import QuartzCore
import PlaygroundSupport


let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
containerView.backgroundColor = UIColor.white
PlaygroundPage.current.liveView = containerView

// 1. LINE
//let lineAnimation = Line(inContainerView: containerView)
//lineAnimation.widthAnimation()
//lineAnimation.springWidthAnimation()


//2. POINTS
//let pointsAnimation = Points()
//pointsAnimation.animate(inView: containerView)


//3. SPACE
let spaceAnim = Space()
spaceAnim.animate(inView: containerView)
