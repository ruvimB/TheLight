//
//  ViewController.swift
//  The Light
//
//  Created by Ruvim on 02.03.2021.
//

import UIKit

class ViewController: UIViewController {

    var isLightOn:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        isLightOn.toggle()
        updateUI()
    }
    
}

