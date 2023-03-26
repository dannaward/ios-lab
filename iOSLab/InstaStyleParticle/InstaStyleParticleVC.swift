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
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width/2, y: view.bounds.height - 100)
        emitterLayer.emitterSize = CGSize(width: 100, height: 100)
        emitterLayer.emitterShape = .point

        let emitterCell = CAEmitterCell()
        emitterCell.contents = {
            let emoji = "🎉"
            let font = UIFont.systemFont(ofSize: 20)
            let size = emoji.size(withAttributes: [.font: font])
            let renderer = UIGraphicsImageRenderer(size: size)
            let image = renderer.image { context in
                emoji.draw(at: .zero, withAttributes: [.font: font])
            }
            return image.cgImage
        }()
        emitterCell.birthRate = 20
        emitterCell.lifetime = 1.0
        emitterCell.velocity = 300
        emitterCell.velocityRange = 50
        emitterCell.emissionRange = .pi / 5
        emitterCell.emissionLongitude = .pi / -2
        emitterCell.alphaRange = 0.3
        emitterCell.alphaSpeed = -0.5
        emitterCell.scale = 0.15
        emitterCell.scaleRange = 1
        emitterCell.scaleSpeed = 0.5
        
        emitterLayer.emitterCells = [emitterCell]
        view.layer.addSublayer(emitterLayer)
    }
}
