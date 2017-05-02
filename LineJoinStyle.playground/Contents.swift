//: Playground - noun: a place where people can play

import UIKit
import CoreGraphics
import QuartzCore
import PlaygroundSupport


let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
containerView.backgroundColor = UIColor.white
PlaygroundPage.current.liveView = containerView


let cross = UIBezierPath()
cross.move(to: CGPoint(x: 100, y: 100)) // your point
cross.addLine(to: CGPoint(x: 200, y: 100)) // your point


let layer = CAShapeLayer(layer: containerView.layer)
layer.path = cross.cgPath
layer.lineCap = "round"
layer.lineWidth = 8.0
layer.fillColor = UIColor.clear.cgColor
layer.strokeColor = UIColor.black.cgColor
containerView.layer.addSublayer(layer)


//LINEWIDTH ANIMATION
let lineWidthAn = CABasicAnimation(keyPath: "lineWidth")
lineWidthAn.duration = 1.0
lineWidthAn.fromValue = 0.5
lineWidthAn.toValue = 15.0
lineWidthAn.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
//layer.add(lineWidthAn, forKey: "lineWidthAn")


//LINEWIDTH SPRING ANIMATION
let springLineWidthAn = CASpringAnimation(keyPath: "lineWidth")
springLineWidthAn.duration = 3.45
springLineWidthAn.fromValue = 0.5
springLineWidthAn.toValue = 8.0
springLineWidthAn.damping = 0.8// def 10 amortizare
springLineWidthAn.mass = 5
springLineWidthAn.stiffness = 5; //rigiditate
springLineWidthAn.initialVelocity = CGFloat(2)
springLineWidthAn.isRemovedOnCompletion = false
springLineWidthAn.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)


DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
    layer.add(springLineWidthAn, forKey: "springLineWidthAn")
}
