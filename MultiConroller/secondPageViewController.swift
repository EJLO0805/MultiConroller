//
//  secondPageViewController.swift
//  MultiConroller
//
//  Created by 羅以捷 on 2022/7/26.
//

import UIKit

class secondPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let emitterImage = UIImage(systemName: "snowflake")
        let emitter = CAEmitterCell()
        let emitterLayer = CAEmitterLayer()
        emitter.contents = emitterImage?.cgImage
        emitter.scale = 0.2
        emitter.scaleRange = 0.4
        emitter.emissionRange = .pi
        emitter.lifetime = 20.0
        emitter.birthRate = 40
        emitter.velocity = -30
        emitter.velocityRange = -20
        emitter.yAcceleration = 30
        emitter.xAcceleration = 5
        emitter.spin = -0.5
        emitter.spinRange = 1.0
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2.0, y: -50)
        emitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        emitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        emitterLayer.beginTime = CACurrentMediaTime()
        emitterLayer.timeOffset = 10
        emitterLayer.emitterCells = [emitter]
        view.layer.addSublayer(emitterLayer)
        // Do any additional setup after loading the view.
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
