//: Playground - noun: a place where people can play

import UIKit
import CoreGraphics
import QuartzCore
import PlaygroundSupport


let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
containerView.backgroundColor = UIColor.white
PlaygroundPage.current.liveView = containerView

//LINE
//let lineAnimation = Line(inContainerView: containerView)
//lineAnimation.widthAnimation()
//lineAnimation.springWidthAnimation()


//POINTS
//let pointsAnimation = Points()
//pointsAnimation.animate(inView: containerView)


//space
containerView.backgroundColor = UIColor.black

var circlePath = UIBezierPath(ovalIn: CGRect(x: Int.random(lower: 0, upper: 667),
                                             y: Int.random(lower: 0, upper: 667),
                                             width: 5,
                                             height: 5))


for _ in 0..<100 {
    
    let circleSize = Int.random(lower: 0, upper: 50)
    let tmpPath = UIBezierPath(ovalIn: CGRect(x: Int.random(lower: 0, upper: 667),
                                              y: Int.random(lower: 0, upper: 667),
                                              width: circleSize,
                                              height: circleSize))
    circlePath.append(tmpPath)
}


let circleLayer = CAShapeLayer(layer: containerView.layer)
circleLayer.path = circlePath.cgPath
circleLayer.fillColor = UIColor.red.cgColor
containerView.layer.addSublayer(circleLayer)


var emptyPath = UIBezierPath(ovalIn: CGRect(x: 375/2, y: 667/2, width: 0, height: 0))


let emptyLayer = CAShapeLayer(layer: containerView.layer)
emptyLayer.path = emptyPath.cgPath
emptyLayer.fillColor = UIColor.red.cgColor
containerView.layer.addSublayer(circleLayer)


let spaceAnim = CABasicAnimation(keyPath: "path")
spaceAnim.duration = 10.0
spaceAnim.fromValue = emptyLayer.path
spaceAnim.toValue = circleLayer.path
spaceAnim.isRemovedOnCompletion = false
spaceAnim.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)

circleLayer.add(spaceAnim, forKey: "spaceAnimation")


