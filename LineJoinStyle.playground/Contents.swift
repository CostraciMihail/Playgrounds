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
//let spaceAnim = Space()
//spaceAnim.animate(inView: containerView)


//4. Animate to arc position
let arcPath = UIBezierPath(arcCenter:CGPoint(x: 120, y: 200),
                           radius: 100,
                           startAngle: CGFloat((90*(M_PI/180))),
                           endAngle: CGFloat((-90*(M_PI/180))),
                           clockwise: false)

arcPath.lineWidth = 3

let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
view1.backgroundColor = UIColor.red
view1.layer.cornerRadius = view1.bounds.size.width/2
containerView.addSubview(view1)


let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
view2.backgroundColor = UIColor.red
view2.layer.cornerRadius = view1.bounds.size.width/2
containerView.addSubview(view2)

let view3 = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
view3.backgroundColor = UIColor.red
view3.layer.cornerRadius = view1.bounds.size.width/2
containerView.addSubview(view3)


let arcPathAnimV1 = CAKeyframeAnimation(keyPath: "position")
arcPathAnimV1.duration = 0.5
arcPathAnimV1.beginTime = CACurrentMediaTime() + 0.3;
arcPathAnimV1.path = arcPath.cgPath
arcPathAnimV1.isRemovedOnCompletion = false
arcPathAnimV1.fillMode = kCAFillModeForwards
arcPathAnimV1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)



print("arcPath.cgPath \(arcPath.cgPath)")
print("currentPoint \(arcPath.currentPoint)")
print("boundingBox \(arcPath.cgPath.boundingBox)")
print("boundingBoxOfPath \(arcPath.cgPath.boundingBoxOfPath)")

let arcPath2 = UIBezierPath(arcCenter:CGPoint(x: 120, y: 200),
                           radius: 100,
                           startAngle: CGFloat((90*(M_PI/180))),
                           endAngle: CGFloat((-40*(M_PI/180))),
                           clockwise: false)

let arcPathAnimV2 = CAKeyframeAnimation(keyPath: "position")
arcPathAnimV2.duration = 0.5
arcPathAnimV2.beginTime = CACurrentMediaTime() + 0.5;
arcPathAnimV2.path = arcPath2.cgPath
arcPathAnimV2.isRemovedOnCompletion = false
arcPathAnimV2.fillMode = kCAFillModeForwards
arcPathAnimV2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)

let arcPath3 = UIBezierPath(arcCenter:CGPoint(x: 120, y: 200),
                            radius: 100,
                            startAngle: CGFloat((90*(M_PI/180))),
                            endAngle: CGFloat((10*(M_PI/180))),
                            clockwise: false)

let arcPathAnimV3 = CAKeyframeAnimation(keyPath: "position")
arcPathAnimV3.duration = 0.5
arcPathAnimV3.path = arcPath3.cgPath
arcPathAnimV3.beginTime = CACurrentMediaTime() + 0.5;
arcPathAnimV3.isRemovedOnCompletion = false
arcPathAnimV3.fillMode = kCAFillModeForwards
arcPathAnimV3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)



view1.layer.add(arcPathAnimV1, forKey: "arcPositionAnimationV1")
view2.layer.add(arcPathAnimV2, forKey: "arcPositionAnimationV2")
view3.layer.add(arcPathAnimV3, forKey: "arcPositionAnimationV3")

