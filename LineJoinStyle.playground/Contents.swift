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
let view1 = UIView(frame: CGRect(x: 120, y: 200, width: 40, height: 40))
view1.backgroundColor = UIColor.red
view1.layer.cornerRadius = view1.bounds.size.width/2
containerView.addSubview(view1)

let view2 = UIView(frame: CGRect(x: 120, y: 200, width: 40, height: 40))
view2.backgroundColor = UIColor.red
view2.layer.cornerRadius = view2.bounds.size.width/2
containerView.addSubview(view2)

let view3 = UIView(frame: CGRect(x: 120, y: 200, width: 40, height: 40))
view3.backgroundColor = UIColor.red
view3.layer.cornerRadius = view3.bounds.size.width/2
containerView.addSubview(view3)

let view4 = UIView(frame: CGRect(x: 120, y: 200, width: 40, height: 40))
view4.backgroundColor = UIColor.red
view4.layer.cornerRadius = view4.bounds.size.width/2
containerView.addSubview(view4)

view1.layer.add(ArcAnimation(startAngle: 90, withEndAngle: -90, beginTime: 1.5), forKey: "arcPositionAnimationV1")
view2.layer.add(ArcAnimation(startAngle: 90, withEndAngle: -40, beginTime: 1.5), forKey: "arcPositionAnimationV2")
view3.layer.add(ArcAnimation(startAngle: 90, withEndAngle: 10, beginTime: 1.5), forKey: "arcPositionAnimationV3")
view4.layer.add(ArcAnimation(startAngle: 90, withEndAngle: 60, beginTime: 1.5), forKey: "arcPositionAnimationV3")
