//
//  ViewController.swift
//  iOSLab
//
//  Created by Danna Lee on 2023/03/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickInstagramParticle(_ sender: Any) {
        let vc = InstaStyleParticleVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}

