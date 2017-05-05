import UIKit
import CoreGraphics
import QuartzCore
import PlaygroundSupport


public class ArcAnimation: CAKeyframeAnimation {
    
    override init() { super.init()  }
    
    public init(startAngle: Double, withEndAngle endAngle: Double, beginTime: Double) {
        
        let arcPath = UIBezierPath(arcCenter:CGPoint(x: 120, y: 200),
                                   radius: 100,
                                   startAngle: CGFloat((startAngle*(M_PI/180))),
                                   endAngle: CGFloat((endAngle*(M_PI/180))),
                                   clockwise: false)
        
        arcPath.lineWidth = 3
        
        super.init()
        
        self.keyPath = "position"
        self.duration = 0.5
        self.beginTime = CACurrentMediaTime() + beginTime;
        self.path = arcPath.cgPath
        self.isRemovedOnCompletion = false
        self.fillMode = kCAFillModeForwards
        self.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}