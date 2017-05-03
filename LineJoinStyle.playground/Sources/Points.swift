import UIKit
import CoreGraphics
import QuartzCore
import PlaygroundSupport

//************************************************************
//POINT
public extension Int {
    
    public static func random(lower: Int , upper: Int) -> Int {
        return Int((arc4random_uniform(UInt32(upper) - UInt32(lower)) + UInt32(lower)))
    }
}

public struct Points {
    
    public init() {
        
    }
    
    public func animate(inView containerView: UIView) {
        
        // x = 50 - 150
        // y = 50 - 250
        var pointPath = UIBezierPath()
        pointPath = UIBezierPath(ovalIn: CGRect(x: 200, y: 200, width: 1, height: 1))
        
        for _ in 0..<100 {
            
            var tmpPath = UIBezierPath()
            tmpPath = UIBezierPath(ovalIn: CGRect(x: CGFloat(Int.random(lower: 50, upper: 150)),
                                                  y: CGFloat(Int.random(lower: 40, upper: 100)),
                                                  width: 5,
                                                  height: 5))
            
            pointPath.append(tmpPath)
        }
        
        
        //POINT LAYER
        let pointLayer = CAShapeLayer(layer: containerView.layer)
        pointLayer.path = pointPath.cgPath
        pointLayer.fillColor = UIColor.red.cgColor
        containerView.layer.addSublayer(pointLayer)
        
        
        //EMPTY PATH
        var emptyPath = UIBezierPath()
        emptyPath = UIBezierPath(ovalIn: CGRect(x: 200, y: 200, width: 0, height: 0))
        
        //EMPTY LAYER
        let emptyLayer = CAShapeLayer(layer: containerView.layer)
        emptyLayer.path = emptyPath.cgPath
        emptyLayer.fillColor = UIColor.red.cgColor
        containerView.layer.addSublayer(emptyLayer)
        
        
        //POINTS ANIMATIONS
        let pointAn = CABasicAnimation(keyPath: "path")
        pointAn.duration = 2.5
        pointAn.fromValue = emptyLayer.path
        pointAn.toValue = pointLayer.path
        
        pointLayer.add(pointAn, forKey: "pointsAppearence")
        
    }
    
    
}
