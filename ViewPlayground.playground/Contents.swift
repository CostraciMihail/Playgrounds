import UIKit
import XCPlayground


let str = "Text Label"


let helloLabel = UILabel(frame: CGRectMake(0.0, 1000.0, 200.0, 44.0))
helloLabel.text = str;
helloLabel.backgroundColor = UIColor.greenColor()
helloLabel.layer.masksToBounds = true
helloLabel.layer.cornerRadius = 10.0
helloLabel.textAlignment = NSTextAlignment.Center


helloLabel


print("\(str)")



let container = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 500.0, height: 500.0))

let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
view.backgroundColor = UIColor.greenColor()
container.addSubview(view)

UIView.animateWithDuration(3) {
	view.center = CGPoint(x: 75.0, y: 75.0)
}

XCPlaygroundPage.currentPage.liveView = container