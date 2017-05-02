//: Playground - noun: a place where people can play

import UIKit
import CoreGraphics
import QuartzCore
import PlaygroundSupport


let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
containerView.backgroundColor = UIColor.white
PlaygroundPage.current.liveView = containerView


let cross = UIBezierPath()
cross.move(to: CGPoint(x: 10, y: 100)) // your point
cross.addLine(to: CGPoint(x: 100, y: 10)) // your point


let layer = CAShapeLayer(layer: containerView.layer)
layer.path = cross.cgPath
layer.lineCap = "round"
layer.lineWidth = 23.0
layer.fillColor = UIColor.clear.cgColor
layer.strokeColor = UIColor.black.cgColor
containerView.layer.addSublayer(layer)
