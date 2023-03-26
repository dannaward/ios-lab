//
//  InstaStyleParticleVC.swift
//  iOSLab
//
//  Created by Danna Lee on 2023/03/26.
//

import UIKit

class InstaStyleParticleVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        generateParticle()
    }
}

extension InstaStyleParticleVC {
    private func generateParticle() {
        let heartEmitter = CAEmitterLayer()
        heartEmitter.emitterPosition = CGPoint(x: view.bounds.width/2, y: view.bounds.height/2)
        heartEmitter.emitterSize = CGSize(width: 100, height: 100)
        heartEmitter.emitterShape = .point

        let heartCell = CAEmitterCell()
        heartCell.contents = UIImage(named: "heart.png")?.cgImage
        heartCell.birthRate = 5
        heartCell.lifetime = 1.0
        heartCell.velocity = 100
        heartCell.emissionRange = .pi / 5
        heartCell.emissionLongitude = .pi / -2

        heartEmitter.emitterCells = [heartCell]
        view.layer.addSublayer(heartEmitter)
    }
}
