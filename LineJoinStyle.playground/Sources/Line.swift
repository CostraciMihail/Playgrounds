
import UIKit
import CoreGraphics
import QuartzCore


public struct Line {
    
    internal var inView = UIView()
    internal var drawLayer = CAShapeLayer()

    
    public init(inContainerView: UIView) {
    
        inView = inContainerView
        
        let cross = UIBezierPath()
        cross.move(to: CGPoint(x: 100, y: 100)) // your point
        cross.addLine(to: CGPoint(x: 200, y: 100)) // your point
        
        drawLayer = CAShapeLayer(layer: inView.layer)
        drawLayer.path = cross.cgPath
        drawLayer.lineCap = "round"
        drawLayer.lineWidth = 8.0
        drawLayer.fillColor = UIColor.clear.cgColor
        drawLayer.strokeColor = UIColor.black.cgColor
        inView.layer.addSublayer(drawLayer)
    }
    
    public mutating func widthAnimation() {

        //LINEWIDTH ANIMATION
        let lineWidthAn = CABasicAnimation(keyPath: "lineWidth")
        lineWidthAn.duration = 1.0
        lineWidthAn.fromValue = 0.5
        lineWidthAn.toValue = 15.0
        lineWidthAn.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        drawLayer.add(lineWidthAn, forKey: "lineWidthAn")
    
    }

    public func springWidthAnimation() {
        
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
                self.drawLayer.add(springLineWidthAn, forKey: "springLineWidthAn")
        }
        
    }
    
}

