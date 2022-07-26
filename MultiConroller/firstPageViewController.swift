//
//  firstPageViewController.swift
//  MultiConroller
//
//  Created by 羅以捷 on 2022/7/26.
//

import UIKit

class firstPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
            for i in 0...self.starShapeLayers.count-1{
                self.starShapeLayers[i].removeFromSuperlayer()
                self.gradientView[i].removeFromSuperview()
            }
            self.starShape()
        }
        starShape()
    }
    var starShapeLayers = [CAShapeLayer(), CAShapeLayer(), CAShapeLayer(), CAShapeLayer(), CAShapeLayer(), CAShapeLayer(), CAShapeLayer(), CAShapeLayer(), CAShapeLayer(), CAShapeLayer()]
    var gradientView = [UIView(), UIView(), UIView(), UIView(), UIView(), UIView(), UIView(), UIView(), UIView(), UIView()]
    func starShape(){
        for i in 0...starShapeLayers.count-1{
            gradientView[i] = UIView(frame: CGRect(x: 0, y: 0, width: 470, height: 525))
            let starPath = UIBezierPath()
            let gradientColor = CAGradientLayer()
            let scaleXY = CGFloat.random(in: 0.1...0.3)
            starPath.move(to: CGPoint(x: 518.7, y: 186.1))
            starPath.addLine(to: CGPoint(x: 444.7, y: 288.8))
            starPath.addCurve(to: CGPoint(x: 444.9, y: 306.9), controlPoint1: CGPoint(x: 440.8, y: 294.2), controlPoint2: CGPoint(x: 440.9, y: 301.5))
            starPath.addLine(to: CGPoint(x: 520.5, y: 408.4))
            starPath.addCurve(to: CGPoint(x: 508.3, y: 432.8), controlPoint1: CGPoint(x: 528.1, y: 418.6), controlPoint2: CGPoint(x: 520.6, y: 432.8))
            starPath.addCurve(to: CGPoint(x: 506.7, y: 432.8), controlPoint1: CGPoint(x: 507.8, y: 432.8), controlPoint2: CGPoint(x: 507.2, y: 432.8))
            starPath.addLine(to: CGPoint(x: 380.7, y: 420.1))
            starPath.addCurve(to: CGPoint(x: 379.2, y: 420), controlPoint1: CGPoint(x: 380.2, y: 420), controlPoint2: CGPoint(x: 379.7, y: 420))
            starPath.addCurve(to: CGPoint(x: 365.2, y: 429.3), controlPoint1: CGPoint(x: 373.1, y: 420), controlPoint2: CGPoint(x: 367.6, y: 423.6))
            starPath.addLine(to: CGPoint(x: 315, y: 545.5))
            starPath.addCurve(to: CGPoint(x: 301, y: 554.7), controlPoint1: CGPoint(x: 312.4, y: 551.6), controlPoint2: CGPoint(x: 306.7, y: 554.7))
            starPath.addCurve(to: CGPoint(x: 287, y: 545.7), controlPoint1: CGPoint(x: 295.4, y: 554.7), controlPoint2: CGPoint(x: 289.8, y: 551.7))
            starPath.addLine(to: CGPoint(x: 235, y: 430.3))
            starPath.addCurve(to: CGPoint(x: 221.1, y: 421.3), controlPoint1: CGPoint(x: 232.5, y: 424.8), controlPoint2: CGPoint(x: 227.1, y: 421.3))
            starPath.addCurve(to: CGPoint(x: 219.3, y: 421.4), controlPoint1: CGPoint(x: 220.5, y: 421.3), controlPoint2: CGPoint(x: 219.9, y: 421.3))
            starPath.addLine(to: CGPoint(x: 93.6, y: 436.1))
            starPath.addCurve(to: CGPoint(x: 91.7, y: 436.2), controlPoint1: CGPoint(x: 93, y: 436.2), controlPoint2: CGPoint(x: 92.3, y: 436.2))
            starPath.addCurve(to: CGPoint(x: 79.4, y: 412), controlPoint1: CGPoint(x: 79.6, y: 436.2), controlPoint2: CGPoint(x: 72, y: 422.3))
            starPath.addLine(to: CGPoint(x: 153.3, y: 309.3))
            starPath.addCurve(to: CGPoint(x: 153.2, y: 291.2), controlPoint1: CGPoint(x: 157.2, y: 303.8), controlPoint2: CGPoint(x: 157.2, y: 296.5))
            starPath.addLine(to: CGPoint(x: 77.6, y: 189.7))
            starPath.addCurve(to: CGPoint(x: 89.8, y: 165.2), controlPoint1: CGPoint(x: 70, y: 179.5), controlPoint2: CGPoint(x: 77.5, y: 165.2))
            starPath.addCurve(to: CGPoint(x: 91.4, y: 165.3), controlPoint1: CGPoint(x: 90.3, y: 165.2), controlPoint2: CGPoint(x: 90.8, y: 165.3))
            starPath.addLine(to: CGPoint(x: 217.3, y: 178))
            starPath.addCurve(to: CGPoint(x: 218.9, y: 178), controlPoint1: CGPoint(x: 217.8, y: 178), controlPoint2: CGPoint(x: 218.4, y: 178))
            starPath.addCurve(to: CGPoint(x: 232.9, y: 168.8), controlPoint1: CGPoint(x: 224.9, y: 178), controlPoint2: CGPoint(x: 230.5, y: 174.5))
            starPath.addLine(to: CGPoint(x: 283, y: 52.6))
            starPath.addCurve(to: CGPoint(x: 297.1, y: 43.3), controlPoint1: CGPoint(x: 285.7, y: 46.4), controlPoint2: CGPoint(x: 291.4, y: 43.3))
            starPath.addCurve(to: CGPoint(x: 311, y: 52.4), controlPoint1: CGPoint(x: 302.7, y: 43.3), controlPoint2: CGPoint(x: 308.3, y: 46.3))
            starPath.addLine(to: CGPoint(x: 363, y: 167.7))
            starPath.addCurve(to: CGPoint(x: 377, y: 176.8), controlPoint1: CGPoint(x: 365.5, y: 173.3), controlPoint2: CGPoint(x: 371, y: 176.8))
            starPath.addCurve(to: CGPoint(x: 378.8, y: 176.6), controlPoint1: CGPoint(x: 377.6, y: 176.8), controlPoint2: CGPoint(x: 378.2, y: 176.7))
            starPath.addLine(to: CGPoint(x: 504.5, y: 161.9))
            starPath.addCurve(to: CGPoint(x: 506.3, y: 161.8), controlPoint1: CGPoint(x: 505.1, y: 161.9), controlPoint2: CGPoint(x: 505.7, y: 161.8))
            starPath.addCurve(to: CGPoint(x: 518.7, y: 186.1), controlPoint1: CGPoint(x: 518.5, y: 161.8), controlPoint2: CGPoint(x: 526, y: 175.8))
            starPath.close()
            starShapeLayers[i].path = starPath.cgPath
            gradientColor.colors = [
                CGColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0.5...1)),
                CGColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0.7...1))
            ]
            gradientColor.frame = gradientView[i].bounds
            starShapeLayers[i].position = CGPoint(x: -60, y: -35)
            gradientColor.mask = starShapeLayers[i]
            gradientView[i].layer.addSublayer(gradientColor)
            gradientView[i].transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -150...100), y: CGFloat.random(in: -200...450)).scaledBy(x: scaleXY, y: scaleXY).rotated(by: CGFloat.pi*CGFloat.random(in: 0...2))
            view.addSubview(gradientView[i])
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
